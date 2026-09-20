"""Operator-only mutation configuration; never persist secret seed material."""
import hashlib
import os
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]


def mutation_salt():
    salt = os.environ.get('NIST_MUTATION_SALT')
    if not salt:
        raise ValueError('NIST_MUTATION_SALT is required (Secret Manager: nist-cobol85-mutation-salt)')
    return salt.encode('utf-8')


def salt_sha256():
    return hashlib.sha256(mutation_salt()).hexdigest()


def private_manifest_path():
    directory = os.environ.get('NIST_PRIVATE_DIR')
    if not directory:
        raise ValueError('NIST_PRIVATE_DIR is required and must be outside the repository')
    path = (Path(directory).expanduser() / 'mutations.json').resolve()
    if path.is_relative_to(ROOT):
        raise ValueError('NIST_PRIVATE_DIR must be outside the repository')
    return path


def check_salt(payload):
    if payload.get('salt_sha256') != salt_sha256():
        raise ValueError('Mutation salt checksum mismatch; use the original operator secret')


def write_private(path, payload):
    import json
    path.parent.mkdir(parents=True, exist_ok=True, mode=0o700)
    # Open with restrictive permissions even on the first write.
    fd = os.open(path, os.O_WRONLY | os.O_CREAT | os.O_TRUNC, 0o600)
    with os.fdopen(fd, 'w') as stream:
        os.fchmod(stream.fileno(), 0o600)
        stream.write(json.dumps(payload, indent=2, sort_keys=True) + '\n')
