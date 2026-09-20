#!/usr/bin/env python3
"""Build a fresh wheel from the current checkout and cold-verify it offline.

Never discovers wheels in dist/ or trusts an existing installed package.
An optional legacy site-packages argument is accepted but never reused.
"""
import argparse
import hashlib
import json
from pathlib import Path
import os
import shutil
import socket
import subprocess
import sys
import tempfile
import zipfile


def fresh_wheel(root, workspace):
    stage = workspace/'source'
    stage.mkdir()
    for name in ('pyproject.toml', 'README.md', 'LICENSE', 'NOTICE.md'):
        shutil.copyfile(root/name, stage/name)
    shutil.copytree(root/'nist_cobol85', stage/'nist_cobol85',
                    ignore=shutil.ignore_patterns('__pycache__', '*.pyc'))
    wheels = workspace/'wheels'
    command = [sys.executable, '-m', 'pip', 'wheel', '--no-deps', '--no-build-isolation',
               '--no-index', '--no-cache-dir', '-w', str(wheels), str(stage)]
    result = subprocess.run(command, capture_output=True, text=True, timeout=120)
    if result.returncode:
        raise RuntimeError('Fresh offline wheel build failed')
    wheel, = wheels.glob('*.whl')
    with zipfile.ZipFile(wheel) as archive:
        package_files = [name for name in archive.namelist() if name.startswith('nist_cobol85/') and not name.endswith('/')]
        for name in package_files:
            assert 'mutations' not in name and 'private' not in name, 'Private wheel member'
            assert hashlib.sha256(archive.read(name)).digest() == hashlib.sha256((root/name).read_bytes()).digest(), 'Wheel differs from checkout'
        info = json.loads(archive.read('nist_cobol85/data/manifest.json'))
        assert info['protocol_version'] == 2, 'Unexpected protocol'
        for asset, key in [('problems.jsonl.gz', 'artifact_sha256'), ('eligibility.json', 'eligibility_sha256')]:
            assert hashlib.sha256(archive.read('nist_cobol85/data/'+asset)).hexdigest() == info[key], 'Packaged data checksum mismatch'
        import yaml
        expected_image = json.loads((root/'anyeval.json').read_text())['external_assets'][0]['source']
        for name in ('compose.yaml', 'values.yaml'):
            config = yaml.safe_load(archive.read('nist_cobol85/'+name))
            assert config['services']['default']['image'] == expected_image, 'Unexpected sandbox image'
    return wheel


def cold_verify(installed, root):
    # Executed in a fresh interpreter, outside the checkout.
    sys.path = [str(installed)] + [p for p in sys.path if p and not Path(p).resolve().is_relative_to(root)]
    def blocked(*args, **kwargs):
        raise AssertionError('Network disabled during wheel validation')
    socket.create_connection = blocked
    socket.socket.connect = blocked
    import nist_cobol85
    from nist_cobol85.dataset import manifest, load_records
    from nist_cobol85.normalization import compare_reports
    from importlib.resources import files
    from importlib.metadata import version
    assert Path(nist_cobol85.__file__).is_relative_to(installed)
    assert version('eval-nist-cobol85') == '1.0.0'
    info = manifest()
    assert info['protocol_version'] == 2
    for asset in ('Dockerfile', 'values.yaml', 'compose.yaml', 'chart/Chart.yaml',
                  'chart/templates/pod.yaml', 'chart/templates/network-policy.yaml', 'data/eligibility.json'):
        assert files('nist_cobol85').joinpath(asset).is_file()
    assert not files('nist_cobol85').joinpath('reference').is_dir()
    if info.get('status') == 'awaiting_mutated_logs':
        try:
            load_records()
        except RuntimeError:
            pass
        else:
            raise AssertionError('Pending dataset must refuse loading')
        print('Fresh wheel integrity: PASS (hashes, protocol 2, sandbox image).')
        print('SKIP cold task execution: fresh Cloud Build logs required for ' + ', '.join(info['pending_programs']))
        return
    from inspect_ai._util.registry import registry_create
    task = registry_create('task', 'nist_cobol85/nist_cobol85_python', sandbox_type='docker')
    assert len(task.dataset) == info['count']
    assert [s.id for s in task.dataset] == info['task_ids']
    assert task.epochs == 1 and Path(task.sandbox.config).is_relative_to(installed)
    for sample, record in zip(task.dataset, load_records()):
        assert record['target'] not in sample.input and not sample.target
        assert compare_reports(record['target'], record['target'])[0]
    default = registry_create('task', 'nist_cobol85/nist_cobol85_python')
    assert Path(default.sandbox.config.chart).is_relative_to(installed)
    print('Fresh cold installed-wheel validation: PASS; hashes, protocol 2, sandbox image, exact manifest ids, targets self-match; network disabled.')


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('site_packages', nargs='?', type=Path, help='Legacy argument; existing installation is never reused')
    parser.add_argument('--cold', type=Path, help=argparse.SUPPRESS)
    args = parser.parse_args()
    root = Path(__file__).resolve().parents[1]
    if args.cold:
        cold_verify(args.cold.resolve(), root)
        return
    with tempfile.TemporaryDirectory(prefix='nist-fresh-wheel-') as tmp:
        workspace = Path(tmp)
        wheel = fresh_wheel(root, workspace)
        installed = workspace/'installed'
        result = subprocess.run([sys.executable, '-m', 'pip', 'install', '--no-deps', '--no-index',
                                 '--no-cache-dir', '--target', str(installed), str(wheel)],
                                capture_output=True, text=True, timeout=120)
        if result.returncode:
            raise RuntimeError('Fresh wheel installation failed')
        environment = dict(os.environ)
        environment.pop('PYTHONPATH', None)
        subprocess.run([sys.executable, '-I', str(Path(__file__).resolve()), '--cold', str(installed)],
                       cwd=workspace, env=environment, check=True, timeout=120)


if __name__ == '__main__':
    main()
