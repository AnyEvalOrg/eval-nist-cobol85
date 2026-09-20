"""Execute the supervisor's actual function bodies; no substring-only assertions.

Full runner tests require Linux/root with UID 65532 reserved for this test sandbox.
Portable seams run on all platforms, with OS/syscall dependencies simulated.
"""
import ast
import json
import os
from pathlib import Path
import shutil
import stat
import subprocess
import sys
from types import SimpleNamespace
from unittest.mock import Mock

import pytest
from nist_cobol85.sandbox_runner import RUNNER, SETUP
from nist_cobol85.scoring import verify_receipt


def function(name, **env):
    node = next(n for n in ast.parse(RUNNER).body if isinstance(n, ast.FunctionDef) and n.name == name)
    namespace = dict(CANDIDATE_UID=65532, CANDIDATE_GID=65532, limit=1024, **env)
    exec(compile(ast.Module(body=[node], type_ignores=[]), '<supervisor seam>', 'exec'), namespace)
    return namespace[name]


def restrictions():
    fake_os = Mock()
    fake_resource = Mock(RLIMIT_NPROC=6, RLIMIT_FSIZE=1, RLIMIT_CORE=4)
    libc = Mock(); libc.prctl.return_value = 0
    function('restrict_child', os=fake_os, resource=fake_resource, libc=libc)()
    return fake_os, fake_resource


@pytest.mark.parametrize('method,args', [('setgroups', ([],)), ('setresgid', (65532,)*3), ('setresuid', (65532,)*3)])
def test_credentials_reset(method, args):
    fake_os, _ = restrictions()
    getattr(fake_os, method).assert_called_once_with(*args)
    names = [c[0] for c in fake_os.method_calls]
    assert names.index('setgroups') < names.index('setresgid') < names.index('setresuid')


@pytest.mark.parametrize('which,limit', [('RLIMIT_NPROC', 128), ('RLIMIT_FSIZE', 1024), ('RLIMIT_CORE', 0)])
def test_resource_limits(which, limit):
    _, fake_resource = restrictions()
    fake_resource.setrlimit.assert_any_call(getattr(fake_resource, which), (limit, limit))


@pytest.mark.parametrize('unsafe', ['type', 'owner', 'link'])
def test_report_stat_protection(tmp_path, unsafe):
    (tmp_path/'REPORT').write_bytes(b'evidence')
    info = SimpleNamespace(st_mode=stat.S_IFREG|0o600, st_uid=65532, st_nlink=1)
    if unsafe == 'type': info.st_mode = stat.S_IFIFO|0o600
    if unsafe == 'owner': info.st_uid = 0
    if unsafe == 'link': info.st_nlink = 2
    fake_os = Mock(wraps=os); fake_os.fstat.return_value = info
    for attr in ('O_RDONLY','O_DIRECTORY','O_NOFOLLOW','O_NONBLOCK'):
        setattr(fake_os, attr, getattr(os, attr))
    reader = function('read_report', os=fake_os, stat=stat)
    with pytest.raises(ValueError, match='Unsafe output'):
        reader(str(tmp_path), 'REPORT', 1024)


@pytest.mark.parametrize('unsafe', ['symlink', 'directory_symlink'])
def test_report_nofollow(tmp_path, unsafe):
    work = tmp_path/'work'; work.mkdir()
    (work/'real').write_bytes(b'evidence')
    if unsafe == 'symlink': (work/'REPORT').symlink_to(work/'real')
    else:
        (work/'REPORT').write_bytes(b'evidence')
        (tmp_path/'alias').symlink_to(work, target_is_directory=True)
        work = tmp_path/'alias'
    reader = function('read_report', os=os, stat=stat)
    with pytest.raises(OSError): reader(str(work), 'REPORT', 1024)


linux_root = pytest.mark.skipif(sys.platform != 'linux' or os.geteuid() != 0,
    reason='Full supervisor execution requires Linux root, prctl/procfs, and reserved candidate UID 65532')


def run_supervised(code, files=None):
    request = dict(files={'main.py': code, **(files or {})}, argv=[sys.executable, '-I', 'main.py'],
                   stdin='', env={}, timeout=4, output_limit=4096, output_file='REPORT')
    setup = subprocess.run([sys.executable, '-I', '-c', SETUP], input=json.dumps(request),
                           capture_output=True, text=True, check=True, timeout=5)
    receipt = json.loads(setup.stdout)
    try:
        result = subprocess.run([sys.executable, '-I', '-c', RUNNER, receipt['cwd']],
                                capture_output=True, text=True, timeout=15)
        assert result.returncode == 0, result.stderr
        checked = verify_receipt(result.stdout, bytes.fromhex(receipt['key']))
        assert checked is not None
        return checked
    finally:
        shutil.rmtree(receipt['cwd'], ignore_errors=True)


@linux_root
def test_executed_credentials_and_limits():
    result = run_supervised('''import os, resource, json
with open('REPORT','w') as f:
 json.dump([os.getresuid(), os.getresgid(), os.getgroups(), resource.getrlimit(resource.RLIMIT_NPROC), resource.getrlimit(resource.RLIMIT_FSIZE)], f)
''')
    assert json.loads(result['output']) == [[65532]*3, [65532]*3, [], [128]*2, [4096]*2]


@linux_root
@pytest.mark.parametrize('code', ["import os; os.mkfifo('REPORT')", "import os; os.symlink('main.py','REPORT')",
    "import os; open('other','w').write('x'); os.link('other','REPORT')"])
def test_executed_unsafe_report(code):
    assert run_supervised(code)['missing_report']


@linux_root
def test_executed_wrong_owner_report():
    # Setup creates supplied files as root. A candidate cannot claim ownership.
    assert run_supervised('pass', {'REPORT': 'root-owned'})['missing_report']


@linux_root
def test_executed_file_limit():
    result = run_supervised("open('REPORT','wb').write(b'x'*8192)")
    assert result['returncode'] != 0 or result['overflow']


@linux_root
def test_executed_process_limit():
    result = run_supervised('''import os, time
children=[]
try:
 for _ in range(140):
  child=os.fork()
  if child == 0:
   time.sleep(10)
   os._exit(0)
  children.append(child)
except OSError:
 open('REPORT','w').write('limited')
finally:
 for child in children:
  os.kill(child, 9)
 for child in children:
  os.waitpid(child, 0)
''')
    assert result['output'] == 'limited'
