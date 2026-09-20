"""Offline, integrity-checked resources; private targets never enter Samples."""
import gzip
import hashlib
import json
from importlib.resources import files


def manifest():
    return json.loads(files('nist_cobol85').joinpath('data/manifest.json').read_text())


def load_records():
    info = manifest()
    if info.get('protocol_version') != 2 or info.get('status') == 'awaiting_mutated_logs':
        raise RuntimeError('Mutated reference logs required; run scripts/build_dataset.py after reference generation.')
    try:
        raw = files('nist_cobol85').joinpath('data/problems.jsonl.gz').read_bytes()
        if hashlib.sha256(raw).hexdigest() != info['artifact_sha256']:
            raise ValueError('Checksum mismatch')
        records = [json.loads(line) for line in gzip.decompress(raw).splitlines()]
        ids = [r['task_id'] for r in records]
        if len(ids) != info['count'] or len(set(ids)) != len(ids) or ids != info['task_ids']:
            raise ValueError('Invalid ids')
        return records
    except Exception:
        pass
    raise RuntimeError('Packaged dataset invalid; details withheld.') from None
