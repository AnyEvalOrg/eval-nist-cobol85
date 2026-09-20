"""No network, model calls, or container engines are needed by this suite."""
from pathlib import Path
import socket
import sys

import pytest

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))


@pytest.fixture(autouse=True)
def no_network(monkeypatch):
    def blocked(*args, **kwargs):
        raise AssertionError("Tests must not access the network")
    monkeypatch.setattr(socket, "create_connection", blocked)
    monkeypatch.setattr(socket.socket, "connect", blocked)

# Pytest creates basetemp, but its parent must exist on a fresh checkout.
(Path(__file__).resolve().parents[1] / '.build').mkdir(exist_ok=True)


@pytest.fixture(autouse=True)
def isolated_mutation_environment(monkeypatch):
    """Tests must never read the operator secret or private manifest."""
    import tempfile
    with tempfile.TemporaryDirectory(prefix='nist-synthetic-', dir='/private/tmp') as directory:
        monkeypatch.setenv('NIST_MUTATION_SALT', 'synthetic-test-salt-not-a-secret')
        monkeypatch.setenv('NIST_PRIVATE_DIR', directory)
        yield


@pytest.fixture
def synthetic_mutation(tmp_path):
    import hashlib
    from scripts.mutate_suite import mutate
    from scripts.mutation_private import salt_sha256
    source = '       PROGRAM-ID. SYNTH.\n       PAR-NAME.\n           03 FILLER PIC X(22).\n'
    for number in range(6):
        name = f'TEST-{number}'
        source += ''.join('       ' + line + '\n' for line in [
            name + '.', f'    MOVE "{name}" TO PAR-NAME.',
            '    IF DATA-ITEM = 42', '        PERFORM PASS', '    ELSE',
            '        MOVE DATA-ITEM TO COMPUTED-N', '        MOVE 42 TO CORRECT-N',
            '        PERFORM FAIL.', '    PERFORM PRINT-DETAIL.'])
    changed, details = mutate(source, 'SYNTH')
    entry = dict(**details, eligible=True, reasons=[], source_path='NC/SYNTH.CBL',
                 mutated_sha256=hashlib.sha256(changed.encode()).hexdigest(),
                 baseline={'eligible': True}, mutation_candidate=True, needs_new_logs=False)
    payload = dict(schema_version=2, salt_sha256=salt_sha256(), programs={'SYNTH': entry})
    tree = tmp_path/'tree'
    path = tree/entry['source_path']
    path.parent.mkdir(parents=True)
    path.write_text(changed)
    rows = []
    for site in details['mutations']:
        rows += [' ' + 'FEATURE'.ljust(20) + ' FAIL* ' + site['paragraph'].ljust(22),
                 ' '*30 + '       COMPUTED='.ljust(17) + '42',
                 ' '*30 + '       CORRECT ='.ljust(17) + site['replacements'][1]['mutated']]
    rows += [' ' + 'FEATURE'.ljust(20) + ' PASS  ' + 'UNMUTATED'.ljust(22),
             ' 1 OF 4 TESTS WERE EXECUTED SUCCESSFULLY', ' 3 TEST(S) FAILED']
    report = '\n'.join(rows) + '\n'
    return dict(payload=payload, path=path, tree=tree, original=source, changed=changed, report=report)
