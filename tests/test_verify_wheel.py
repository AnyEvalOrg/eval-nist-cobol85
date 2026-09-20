"""Verification must use fresh checkout bytes, never stale distribution files."""
import json
from pathlib import Path
import shutil
import zipfile
import pytest
from scripts.verify_wheel import fresh_wheel

ROOT = Path(__file__).resolve().parents[1]


@pytest.fixture
def checkout(tmp_path):
    root = tmp_path/'checkout'
    root.mkdir()
    for name in ('pyproject.toml', 'README.md', 'LICENSE', 'NOTICE.md', 'anyeval.json'):
        shutil.copyfile(ROOT/name, root/name)
    shutil.copytree(ROOT/'nist_cobol85', root/'nist_cobol85', ignore=shutil.ignore_patterns('__pycache__'))
    (root/'dist').mkdir()
    (root/'dist/eval_nist_cobol85-1.0.0-py3-none-any.whl').write_bytes(b'STALE INVALID WHEEL')
    return root


def test_wheel_is_built_from_current_checkout(checkout, tmp_path):
    module = checkout/'nist_cobol85/__init__.py'
    module.write_text(module.read_text() + '\n# fresh-checkout-marker\n')
    workspace = tmp_path/'build'
    workspace.mkdir()
    wheel = fresh_wheel(checkout, workspace)
    assert wheel.is_relative_to(workspace)
    with zipfile.ZipFile(wheel) as archive:
        assert b'fresh-checkout-marker' in archive.read('nist_cobol85/__init__.py')
    assert (checkout/'dist/eval_nist_cobol85-1.0.0-py3-none-any.whl').read_bytes() == b'STALE INVALID WHEEL'


@pytest.mark.parametrize('fault,message', [('hash', 'checksum'), ('protocol', 'protocol'), ('image', 'image')])
def test_fresh_wheel_rejects_invalid_contract(checkout, tmp_path, fault, message):
    if fault == 'image':
        path = checkout/'nist_cobol85/values.yaml'
        path.write_text(path.read_text().replace('eval-livecodebench-sandbox:1.0.0', 'wrong:0'))
    else:
        path = checkout/'nist_cobol85/data/manifest.json'
        info = json.loads(path.read_text())
        info['artifact_sha256' if fault == 'hash' else 'protocol_version'] = 'invalid'
        path.write_text(json.dumps(info))
    workspace = tmp_path/'build'
    workspace.mkdir()
    with pytest.raises(AssertionError, match=message):
        fresh_wheel(checkout, workspace)
