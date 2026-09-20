"""Private locations/literals may never enter package data or distribution files."""
import gzip
import json
from pathlib import Path
import shutil
import subprocess
import sys
import zipfile

ROOT = Path(__file__).resolve().parents[1]
PUBLIC_DATA = {'problems.jsonl.gz', 'manifest.json', 'eligibility.json'}
PRIVATE_KEYS = {'mutations', 'replacements', 'comment_changes', 'mutable_sites', 'seed', 'salt_sha256'}


def check_data(blob, suffix):
    if suffix == '.gz':
        rows = [json.loads(line) for line in gzip.decompress(blob).splitlines()]
    elif suffix == '.json':
        rows = [json.loads(blob)]
    else:
        return
    def walk(value):
        if isinstance(value, dict):
            assert not PRIVATE_KEYS.intersection(value), 'Private mutation metadata in package data'
            for child in value.values():
                walk(child)
        elif isinstance(value, list):
            for child in value:
                walk(child)
    walk(rows)


def test_repository_has_no_private_manifest():
    assert not list(ROOT.rglob('mutations*.json')), 'Private manifest present in repository'
    for path in (ROOT/'nist_cobol85/data').rglob('*'):
        if path.is_file():
            assert path.name in PUBLIC_DATA, 'Unexpected package data file'
            check_data(path.read_bytes(), path.suffix)


def test_wheel_excludes_private_site_metadata(tmp_path):
    stage = tmp_path/'stage'
    stage.mkdir()
    for name in ('pyproject.toml', 'README.md', 'LICENSE', 'NOTICE.md'):
        shutil.copyfile(ROOT/name, stage/name)
    shutil.copytree(ROOT/'nist_cobol85', stage/'nist_cobol85', ignore=shutil.ignore_patterns('__pycache__'))
    # A stale manifest must be excluded even if accidentally left in package data.
    (stage/'nist_cobol85/data/mutations.json').write_text('{"mutations": [{"line": 123}]}')
    result = subprocess.run([sys.executable, '-m', 'pip', 'wheel', '--no-deps', '--no-build-isolation',
                             '--no-index', '-w', str(tmp_path/'wheels'), str(stage)],
                            capture_output=True, text=True, timeout=120)
    (stage/'nist_cobol85/data/mutations.json').unlink()
    assert result.returncode == 0, 'Offline wheel build failed'
    wheel, = (tmp_path/'wheels').glob('*.whl')
    with zipfile.ZipFile(wheel) as archive:
        for name in archive.namelist():
            assert 'mutations' not in name and 'private' not in name, 'Private file in wheel'
            if name.startswith('nist_cobol85/data/'):
                assert Path(name).name in PUBLIC_DATA, 'Unexpected data file in wheel'
                check_data(archive.read(name), Path(name).suffix)
