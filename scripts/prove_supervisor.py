#!/usr/bin/env python3
"""Copy-based revert proof: remove each protection in isolation, run its test.

Never edits the working supervisor. Uses the invoking Python/pytest environment.
"""
import json
from pathlib import Path
import shutil
import subprocess
import sys
import tempfile

ROOT = Path(__file__).resolve().parents[1]
CASES = [
    ('supplementary_groups', '    os.setgroups([])\n', '', 'test_credentials_reset'),
    ('gid_reset', '    os.setresgid(CANDIDATE_GID, CANDIDATE_GID, CANDIDATE_GID)\n', '', 'test_credentials_reset'),
    ('uid_reset', '    os.setresuid(CANDIDATE_UID, CANDIDATE_UID, CANDIDATE_UID)\n', '', 'test_credentials_reset'),
    ('process_limit', '    resource.setrlimit(resource.RLIMIT_NPROC, (128, 128))\n', '', 'test_resource_limits'),
    ('file_limit', '    resource.setrlimit(resource.RLIMIT_FSIZE, (limit, limit))\n', '', 'test_resource_limits'),
    ('core_limit', '    resource.setrlimit(resource.RLIMIT_CORE, (0, 0))\n', '', 'test_resource_limits'),
    ('report_type', 'not stat.S_ISREG(info.st_mode) or ', '', 'test_report_stat_protection'),
    ('report_owner', 'info.st_uid != CANDIDATE_UID or ', '', 'test_report_stat_protection'),
    ('report_links', ' or info.st_nlink != 1', '', 'test_report_stat_protection'),
    ('report_nofollow', ' | os.O_NOFOLLOW', '', 'test_report_nofollow'),
]


def main():
    results = []
    original = (ROOT/'nist_cobol85/sandbox_runner.py').read_text()
    with tempfile.TemporaryDirectory(prefix='nist-revert-') as tmp:
        work = Path(tmp)
        shutil.copytree(ROOT/'nist_cobol85', work/'nist_cobol85', ignore=shutil.ignore_patterns('__pycache__'))
        (work/'tests').mkdir()
        for name in ('conftest.py', 'test_supervisor.py'):
            shutil.copyfile(ROOT/'tests'/name, work/'tests'/name)
        for name, old, new, test in CASES:
            assert original.count(old) == 1 or name == 'report_nofollow'
            (work/'nist_cobol85/sandbox_runner.py').write_text(original.replace(old, new))
            shutil.rmtree(work/'nist_cobol85/__pycache__', ignore_errors=True)
            result = subprocess.run([sys.executable, '-m', 'pytest', '-q', '-p', 'no:cacheprovider',
                                     'tests/test_supervisor.py', '-k', test], cwd=work,
                                    capture_output=True, text=True, timeout=30)
            # Exit 1 is assertion failure; collection/import errors do not prove detection.
            assert result.returncode == 1 and 'FAILED tests/test_supervisor.py::' in result.stdout, name
            summary = result.stdout.strip().splitlines()[-1]
            results.append(dict(protection=name, returncode=result.returncode, summary=summary))
            print(f'{name}: detected ({summary})')
    (ROOT/'.build/supervisor-revert-proof.json').write_text(json.dumps(results, indent=2)+'\n')


if __name__ == '__main__':
    main()
