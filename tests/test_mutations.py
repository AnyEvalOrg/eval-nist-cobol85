import copy
import hashlib
import json
from pathlib import Path
import pytest
from scripts.mutate_suite import mutate, find_sites, supported_sites, generate
from scripts.build_dataset import build, validate_mutated
from nist_cobol85.prompts import user_prompt
from test_scoring import record

ROOT = Path(__file__).resolve().parents[1]


def test_mutated_inventory_and_exact_edits(synthetic_mutation):
    fixture = synthetic_mutation
    entry = fixture['payload']['programs']['SYNTH']
    changed, details = mutate(fixture['original'], 'SYNTH')
    assert changed == fixture['changed']
    assert details['mutations'] == entry['mutations']
    assert len(entry['mutations']) == min(max(2, round(0.25 * entry['mutable_sites'])), entry['mutable_sites']//2)
    assert len(changed) == len(fixture['original'])
    restored = changed.splitlines(keepends=True)
    for site in entry['mutations']:
        assert len(site['replacements']) == 2
        for replacement in site['replacements']:
            line, col = replacement['line']-1, replacement['column']-1
            old, new = replacement['original'], replacement['mutated']
            assert old != new
            assert restored[line][col:col+len(new)] == new
            restored[line] = restored[line][:col] + old + restored[line][col+len(new):]
    assert ''.join(restored) == fixture['original']


def fixed(code):
    code = ('DATA DIVISION.\nWORKING-STORAGE SECTION.\n'
            '01 DATA-ITEM PIC 99.\n01 CORRECT-N PIC -9(9).9(9).\n'
            'PROCEDURE DIVISION.\n' + code)
    return ''.join('       '+line+'\n' for line in code.splitlines())


@pytest.mark.parametrize('op', ['=', 'EQUAL TO', 'IS EQUAL TO', 'NOT EQUAL', '<', '>'])
def test_supported_predicates(op):
    source = fixed(f'''TEST-ONE.
    IF DATA-ITEM {op} 42
       PERFORM PASS
    ELSE
       MOVE DATA-ITEM TO COMPUTED-N
       MOVE +42 TO CORRECT-N
       PERFORM FAIL.
    PERFORM PRINT-DETAIL.''')
    assert len(find_sites(source)) == 1
    assert not find_sites(source.replace('MOVE +42', 'MOVE +43'))
    assert not find_sites(source.replace('PERFORM PASS', 'AND OTHER = 7 PERFORM PASS'))


def test_manifest_is_private(synthetic_mutation):
    fixture = record()
    assert user_prompt({**fixture, 'mutations': synthetic_mutation['payload'], 'original_literals': 'SECRET'}) == user_prompt(fixture)


def test_missing_log_refuses_but_zero_fail_is_ineligible(synthetic_mutation):
    payload, path = synthetic_mutation['payload'], synthetic_mutation['path']
    tmp_path = synthetic_mutation['tree']
    with pytest.raises(ValueError, match='missing mutated log'):
        validate_mutated(tmp_path, payload)
    entry = next(iter(payload['programs'].values()))
    report = synthetic_mutation['report']
    path.with_suffix('.log').write_text(report.replace('FAIL*', 'PASS '))
    validate_mutated(tmp_path, payload)
    assert not entry['eligible']
    assert entry['reasons'] == ['mutation did not bite']
    # A fresh execution can promote a runtime exclusion again.
    path.with_suffix('.log').write_text(report)
    validate_mutated(tmp_path, payload)
    assert entry['eligible'] and not entry['reasons']


def test_source_drift_refuses(synthetic_mutation):
    payload, path = synthetic_mutation['payload'], synthetic_mutation['path']
    path.write_text(synthetic_mutation['original'])
    with pytest.raises(ValueError, match='checksum mismatch'):
        validate_mutated(synthetic_mutation['tree'], payload)


def test_supporting_inputs_are_copied_exactly():
    for path in (ROOT/'reference').rglob('*'):
        if path.is_file() and (path.suffix in {'.DAT','.inp','.SUB'} or path.parent.name in {'lib','copy','copyalt'}):
            from scripts.mutate_suite import scrub_comments
            expected = path.read_bytes()
            if path.suffix in {'.CBL', '.SUB'} or path.parent.name in {'copy', 'copyalt'}:
                expected = scrub_comments(expected.decode('latin1')).encode('latin1')
            assert (ROOT/'reference-mutated'/path.relative_to(ROOT/'reference')).read_bytes() == expected
    assert (ROOT/'reference-mutated/report.pl').read_bytes() == (ROOT/'reference/report.pl').read_bytes()


@pytest.mark.parametrize('unplanted', [False, True])
def test_synthetic_mutated_single_program_build(tmp_path, synthetic_mutation, unplanted):
    from scripts.mutation_private import private_manifest_path, write_private
    fixture = synthetic_mutation
    tree, path, report = fixture['tree'], fixture['path'], fixture['report']
    (tree/'index.json').write_text(json.dumps({'programs': {'SYNTH': {'module': 'NC'}}}))
    (tree/'report.pl').write_text('')
    (tree/'cobc-version.txt').write_text('synthetic compiler')
    if unplanted:
        report = report.replace(' PASS  ', ' FAIL* ')
    path.with_suffix('.log').write_text(report)
    private = private_manifest_path()
    write_private(private, fixture['payload'])
    records, eligibility, manifest = build(tree, tmp_path/'data')
    if unplanted:
        assert records == [] and eligibility['eligible'] == manifest['count'] == 0
        private_entry = json.loads(private.read_text())['programs']['SYNTH']
        assert not private_entry['eligible']
        assert private_entry['reasons'] == ['FAIL rows outside mutated sites']
        return
    assert len(records) == eligibility['eligible'] == 1
    assert records[0]['source'] == fixture['changed']
    assert records[0]['target'] == report
    assert manifest['protocol_version'] == 2
    assert manifest['mutation_sha256'] == hashlib.sha256(private.read_bytes()).hexdigest()
    assert 'mutations' not in records[0]
    build(tree, tmp_path/'rebuild')
    for asset in ('problems.jsonl.gz', 'eligibility.json', 'manifest.json'):
        assert (tmp_path/'data'/asset).read_bytes() == (tmp_path/'rebuild'/asset).read_bytes()


@pytest.mark.parametrize('fault', ['unplanted', 'wrong_literal', 'missing_site', 'wrong_subtest'])
def test_bad_execution_evidence_is_excluded(synthetic_mutation, fault):
    payload, path = synthetic_mutation['payload'], synthetic_mutation['path']
    tmp_path = synthetic_mutation['tree']
    entry = next(iter(payload['programs'].values()))
    report = synthetic_mutation['report']
    lines = report.splitlines(keepends=True)
    failure = next(i for i, line in enumerate(lines) if 'FAIL*' in line)
    if fault == 'unplanted':
        # A real unmutated test now fails, as with a compiler regression.
        verdict_column = lines[failure].index('FAIL*')
        passing = next(i for i, line in enumerate(lines) if line[verdict_column:verdict_column+6].strip() == 'PASS' and 'PARAGRAPH-NAME' not in line)
        lines[passing] = lines[passing][:verdict_column] + 'FAIL* ' + lines[passing][verdict_column+6:]
    elif fault == 'wrong_literal':
        correct = next(i for i in range(failure, len(lines)) if 'CORRECT =' in lines[i])
        lines[correct] = lines[correct][:47] + 'WRONG'.ljust(70) + '\n'
    elif fault == 'wrong_subtest':
        lines[failure] = lines[failure][:28] + lines[failure][28:47] + '.99' + lines[failure][50:]
    else:
        lines[failure] = lines[failure].replace('FAIL*', 'PASS ')
    path.with_suffix('.log').write_text(''.join(lines))
    validate_mutated(tmp_path, payload)
    assert not entry['eligible']
    if fault in {'unplanted', 'wrong_subtest'}:
        assert 'FAIL rows outside mutated sites' in entry['reasons']
    elif fault == 'wrong_literal':
        assert 'FAIL rows lack matching mutated COMPUTED/CORRECT evidence' in entry['reasons']
    else:
        assert 'planted sites without matching FAIL rows' in entry['reasons']


@pytest.mark.parametrize('op', ['NOT =', 'NOT EQUAL TO', 'IS NOT EQUAL TO'])
def test_direct_inequality_jump(op):
    source = fixed(f'''SUB-SCRIPT-1.
    IF DATA-ITEM {op} 42
        GO TO LOCAL-FAIL.
    PERFORM PASS.
    GO TO LOCAL-WRITE.
LOCAL-DELETE.
    PERFORM DE-LETE.
    GO TO LOCAL-WRITE.
LOCAL-FAIL.
    MOVE DATA-ITEM TO COMPUTED-N.
    MOVE +42 TO CORRECT-N.
    PERFORM FAIL.
LOCAL-WRITE.
    MOVE "SUB-SCRIPT-1" TO PAR-NAME.
    PERFORM PRINT-DETAIL.''')
    assert len(find_sites(source)) == 1
    assert not find_sites(source, extended=False)
    assert not find_sites(source.replace('MOVE +42', 'MOVE +43'))
    assert not find_sites(source.replace('MOVE DATA-ITEM', 'MOVE OTHER-ITEM'))
    assert not find_sites(source.replace('PERFORM FAIL.', 'PERFORM FAIL.\n           MOVE 0 TO DATA-ITEM.'))
    assert not find_sites(source.replace('PERFORM FAIL.', 'PERFORM USER-CHECK.\n           PERFORM FAIL.'))
    assert not find_sites(source.replace('GO TO LOCAL-FAIL.', 'GO TO DIFFERENT-FAIL.'))


def test_numeric_evidence_formatting_and_annotations():
    from scripts.mutation_evidence import correct_matches
    site = {'kind': 'N', 'replacements': [{}, {'mutated': '+42.000'}]}
    row = ('row', '', 'FAIL', '', (('computed', '0'), ('correct', ' 000000042.000000000  VI-42')))
    assert correct_matches(row, site, '')
    assert not correct_matches(row[:4] + (row[4] + (('correct', '99'),),), site, '')
    site['replacements'][1]['mutated'] = '43'
    assert not correct_matches(row, site, '')


def test_new_candidate_waits_for_log_and_then_promotes(synthetic_mutation):
    payload, path = synthetic_mutation['payload'], synthetic_mutation['path']
    tmp_path = synthetic_mutation['tree']
    entry = next(iter(payload['programs'].values()))
    entry.update(eligible=False, needs_new_logs=True, reasons=['awaiting mutated logs'])
    validate_mutated(tmp_path, payload)
    assert not entry['eligible'] and entry['needs_new_logs']
    path.with_suffix('.log').write_text(synthetic_mutation['report'])
    validate_mutated(tmp_path, payload)
    assert entry['eligible'] and not entry['needs_new_logs']


def test_missing_site_cannot_borrow_another_sites_row(synthetic_mutation):
    from scripts.mutation_evidence import mutation_evidence
    from nist_cobol85.normalization import normalize_report
    entry = synthetic_mutation['payload']['programs']['SYNTH']
    path = synthetic_mutation['path']
    sites = [entry['mutations'][0], entry['mutations'][0]]
    evidence = mutation_evidence(path.read_text(), sites, normalize_report(synthetic_mutation['report']))
    assert evidence['missing_sites'] == [sites[0]['paragraph']]


def test_eligible_entry_cannot_bypass_validation_with_empty_mutations(synthetic_mutation):
    payload = synthetic_mutation['payload']
    tmp_path = synthetic_mutation['tree']
    entry = next(iter(payload['programs'].values()))
    entry.update(mutations=[], mutation_candidate=False)
    with pytest.raises(ValueError, match='fewer than 2 mutations'):
        validate_mutated(tmp_path, payload)


def test_seed_is_hmac_and_never_persisted(monkeypatch, synthetic_mutation):
    import hmac
    import random
    from scripts import mutate_suite
    salt = 'known-synthetic-key'
    monkeypatch.setenv('NIST_MUTATION_SALT', salt)
    expected = int.from_bytes(hmac.new(salt.encode(), b'SYNTH', hashlib.sha256).digest(), 'big')
    seeds = []
    original_random = random.Random
    def capture(seed):
        seeds.append(seed)
        return original_random(seed)
    monkeypatch.setattr(mutate_suite.random, 'Random', capture)
    _, details = mutate(synthetic_mutation['original'], 'SYNTH')
    assert seeds == [expected]
    assert 'seed' not in details and salt not in json.dumps(details)
    first, _ = mutate(synthetic_mutation['original'], 'SYNTH')
    monkeypatch.setenv('NIST_MUTATION_SALT', 'different-synthetic-key')
    second, _ = mutate(synthetic_mutation['original'], 'SYNTH')
    assert first != second


@pytest.mark.parametrize('operation', ['mutate', 'generate', 'build'])
@pytest.mark.parametrize('missing', [True, False])
def test_secret_is_required_before_any_io(monkeypatch, tmp_path, operation, missing):
    if missing:
        monkeypatch.delenv('NIST_MUTATION_SALT')
    else:
        monkeypatch.setenv('NIST_MUTATION_SALT', '')
    with pytest.raises(ValueError, match='NIST_MUTATION_SALT is required'):
        if operation == 'mutate':
            mutate('', 'SYNTH')
        elif operation == 'generate':
            generate(tmp_path/'absent', tmp_path/'tree', tmp_path/'data')
        else:
            build(tmp_path/'absent', tmp_path/'data')
    assert not list(tmp_path.iterdir())


@pytest.mark.parametrize('operation', ['generate', 'build'])
def test_wrong_salt_refuses_before_writing(monkeypatch, tmp_path, synthetic_mutation, operation):
    from scripts.mutation_private import private_manifest_path, write_private
    path = private_manifest_path()
    write_private(path, synthetic_mutation['payload'])
    before = path.read_bytes()
    monkeypatch.setenv('NIST_MUTATION_SALT', 'wrong-synthetic-key')
    with pytest.raises(ValueError, match='salt checksum mismatch'):
        if operation == 'generate':
            generate(tmp_path/'absent', tmp_path/'output', tmp_path/'data')
        else:
            build(tmp_path/'absent', tmp_path/'data')
    assert path.read_bytes() == before
    assert not (tmp_path/'data').exists()


@pytest.mark.parametrize('directory', [None, str(ROOT/'private'), str(ROOT/'nist_cobol85/data')])
def test_private_directory_required_and_outside_repo(monkeypatch, directory):
    from scripts.mutation_private import private_manifest_path
    if directory is None:
        monkeypatch.delenv('NIST_PRIVATE_DIR')
    else:
        monkeypatch.setenv('NIST_PRIVATE_DIR', directory)
    with pytest.raises(ValueError, match='NIST_PRIVATE_DIR'):
        private_manifest_path()


def test_comments_do_not_disclose_original_expectations(synthetic_mutation):
    import re
    source = synthetic_mutation['original']
    source = re.sub(r'(?m)^(       TEST-\d+\.)$',
                    '      * EXPECTED VALUE IS 42.\n\\1\n'
                    '      * THE RESULT SHOULD BE FORTY TWO.\n'
                    '      * ASSERTION CONSTANT 42.\n'
                    '      * EXPECTED 42 (FORTY TWO).\n'
                    '      *' + ' '*70 + 'EXPECTED 42', source)
    changed, details = mutate(source, 'SYNTH')
    assert len(changed) == len(source)
    assert details['comment_changes']
    original_lines = source.splitlines()
    lines = changed.splitlines()
    for edit in details['comment_changes']:
        line, column = edit['line']-1, edit['column']-1
        assert original_lines[line][column:column+len(edit['original'])] == edit['original']
        assert lines[line][column:column+len(edit['mutated'])] == edit['mutated']
    for site in details['mutations']:
        index = next(i for i, line in enumerate(lines) if line.strip() == site['paragraph']+'.')
        for i in (index-1, index+1, index+2, index+3, index+4):
            assert not lines[i][7:].strip()
    assert any(edit['action'] == 'strip' for edit in details['comment_changes'])


def test_generation_invalidates_every_candidate_and_uses_external_manifest(tmp_path, synthetic_mutation, capsys):
    from scripts.mutation_private import private_manifest_path, salt_sha256
    fixture = synthetic_mutation
    reference = tmp_path/'reference'
    (reference/'NC').mkdir(parents=True)
    (reference/'NC/SYNTH.CBL').write_text(fixture['original'])
    (reference/'NC/SYNTH.log').write_text(fixture['report'].replace('FAIL*', 'PASS '))
    (reference/'index.json').write_text(json.dumps({'programs': {'SYNTH': {'module': 'NC'}}}))
    (reference/'report.pl').write_text('')
    (reference/'cobc-version.txt').write_text('synthetic compiler')
    destination, data = tmp_path/'mutated', tmp_path/'data'
    (destination/'NC').mkdir(parents=True)
    # Even an unchanged destination cannot borrow an untracked old log.
    (destination/'NC/SYNTH.CBL').write_text(fixture['changed'])
    (destination/'NC/SYNTH.log').write_text(fixture['report'])
    (destination/'NC/SYNTH.out').write_text('stale stdout')
    payload = generate(reference, destination, data)
    entry = payload['programs']['SYNTH']
    assert entry['needs_new_logs'] and not entry['eligible']
    assert not (destination/'NC/SYNTH.log').exists()
    assert not (destination/'NC/SYNTH.out').exists()
    assert 'SYNTH' in capsys.readouterr().out
    assert private_manifest_path().exists() and not (data/'mutations.json').exists()
    assert payload['salt_sha256'] == salt_sha256()
    assert 'seed' not in json.dumps(payload)
    public = json.loads((data/'manifest.json').read_text())
    assert public['status'] == 'awaiting_mutated_logs'
    assert public['pending_programs'] == ['SYNTH']
    before = private_manifest_path().read_bytes()
    generate(reference, destination, data)
    assert private_manifest_path().read_bytes() == before
    (destination/'NC/SYNTH.log').write_text(fixture['report'])
    records, eligibility, manifest = build(destination, data)
    assert len(records) == 1 and manifest['status'] == 'ready'
    assert eligibility['mutation_summary']['pending'] == 0
    assert eligibility['mutation_summary']['shipped_sites'] == 2
    # A policy change also invalidates evidence if a program happens to retain
    # exactly the same selected operands and source bytes under the new rule.
    from scripts.mutation_private import write_private
    prior = json.loads(private_manifest_path().read_text())
    prior['algorithm'] = 'old-selection-policy'
    write_private(private_manifest_path(), prior)
    regenerated = generate(reference, destination, data)
    assert regenerated['programs']['SYNTH']['needs_new_logs']
    assert not (destination/'NC/SYNTH.log').exists()


def test_comment_edits_are_independent_of_selection(monkeypatch, synthetic_mutation):
    source = synthetic_mutation['original']
    source = source.replace('       TEST-', '      * EXPECTED VALUE 42, FORTY TWO.\n       TEST-')
    source = source.replace('           IF DATA-ITEM',
                            '           MOVE "EXPECTED 42" TO RE-MARK.\n           IF DATA-ITEM')
    source += '       TEST-UNSUPPORTED.\n      * EXPECTED VALUE SEVEN.\n           CONTINUE.\n'
    monkeypatch.setenv('NIST_MUTATION_SALT', 'comment-key-one')
    first, a = mutate(source, 'SYNTH')
    monkeypatch.setenv('NIST_MUTATION_SALT', 'comment-key-two')
    second, b = mutate(source, 'SYNTH')
    assert len(a['mutations']) == len(b['mutations']) == 2
    assert a['mutable_sites'] == b['mutable_sites'] == 5
    assert a['comment_changes'] == b['comment_changes']
    assert len(a['diagnostic_changes']) == 1
    assert a['diagnostic_changes'] == b['diagnostic_changes']
    assert first.count('"EXPECTED ??"') == second.count('"EXPECTED ??"') == 1
    assert [l for l in first.splitlines() if l[6:7] in {'*', '/'}] == [l for l in second.splitlines() if l[6:7] in {'*', '/'}]
    assert all(not l[7:].strip() for l in first.splitlines() if l[6:7] in {'*', '/'})


@pytest.mark.parametrize('count', [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 14, 18, 26, 50])
def test_four_site_threshold_and_quarter_selection(count):
    source = fixed('\n'.join(f'''TEST-{i}.
    IF DATA-ITEM = {10+i}
        PERFORM PASS
    ELSE
        MOVE DATA-ITEM TO COMPUTED-N
        MOVE {10+i} TO CORRECT-N
        PERFORM FAIL.
    PERFORM PRINT-DETAIL.''' for i in range(count)))
    _, details = mutate(source, 'SYNTH')
    assert details['mutable_sites'] == count
    selected = len(details['mutations'])
    assert selected == (min(max(2, round(0.25 * count)), count//2) if count >= 4 else 0)
    assert selected <= count//2


def diagnostic_program(count=6, shape='jump'):
    """IC108A-shaped local failure diagnostics, with no upstream program text."""
    source = ''.join('       ' + line + '\n' for line in [
        'DATA DIVISION.', 'WORKING-STORAGE SECTION.',
        '01 DATA-ITEM PIC X(6).', '01 CORRECT-A PIC X(20).',
        'PROCEDURE DIVISION.'])
    for i in range(count):
        source += ''.join('       ' + line + '\n' for line in [
            f'CHECK-{i}.',
            '    MOVE "EXPECTED SUB001" TO RE-MARK.',
            '    IF DATA-ITEM NOT = "SUB001"',
            f'        GO TO DIAGNOSTIC-{i}.',
            '    PERFORM PASS.', f'    GO TO WRITE-{i}.',
            f'DIAGNOSTIC-{i}.', '    MOVE DATA-ITEM TO COMPUTED-A.',
            '    MOVE "SUB001" TO CORRECT-A.',
            '    MOVE "SUBPROGRAM SUB001 ERROR SUB001" TO RE-MARK.',
            "    MOVE 'SUB001 ERROR' TO RE-MARK.",
            '    MOVE "UNRELATED ERROR" TO RE-MARK.',
            '    PERFORM FAIL.', f'WRITE-{i}.',
            '    PERFORM PRINT-DETAIL.'])
    if shape == 'fallthrough':
        import re
        source = source.replace('IF DATA-ITEM NOT =', 'IF DATA-ITEM =')
        source = re.sub(r'       +GO TO DIAGNOSTIC-\d+\.\n', '', source)
    return source


@pytest.mark.parametrize('count,select', [(3, True), (6, True), (6, False)])
@pytest.mark.parametrize('shape', ['jump', 'fallthrough'])
def test_diagnostic_strings_scrub_every_candidate(monkeypatch, count, select, shape):
    source = diagnostic_program(count, shape)
    monkeypatch.setenv('NIST_MUTATION_SALT', 'comment-key-one')
    first, a = mutate(source, 'SYNTH', select=select)
    monkeypatch.setenv('NIST_MUTATION_SALT', 'comment-key-two')
    second, b = mutate(source, 'SYNTH', select=select)
    assert not a['mutations'] and not b['mutations']
    assert a['mutable_sites'] == 0
    assert a['diagnostic_changes'] == b['diagnostic_changes']
    assert len(a['diagnostic_changes']) == 3 * count
    for changed, details in [(first, a), (second, b)]:
        assert len(changed) == len(source)
        assert changed.count('"EXPECTED ??????"') == count
        assert changed.count('"SUBPROGRAM ?????? ERROR ??????"') == count
        assert changed.count("'?????? ERROR'") == count
        assert changed.count('"UNRELATED ERROR"') == count
        # Unselected paired expectations remain executable and unchanged.
        assert changed.count('"SUB001"') == 2 * (count - len(details['mutations']))
        restored = changed.splitlines(keepends=True)
        edits = details['diagnostic_changes'] + [r for s in details['mutations'] for r in s['replacements']]
        for edit in edits:
            line, col = edit['line']-1, edit['column']-1
            old, new = edit['original'], edit['mutated']
            assert len(old) == len(new)
            assert restored[line][col:col+len(new)] == new
            restored[line] = restored[line][:col] + old + restored[line][col+len(new):]
        assert ''.join(restored) == source


@pytest.mark.parametrize('count', [3, 5])
def test_generation_explains_insufficient_sites(tmp_path, synthetic_mutation, count):
    fixture = synthetic_mutation
    reference = tmp_path/'reference'
    (reference/'NC').mkdir(parents=True)
    (reference/'NC/SYNTH.CBL').write_text(diagnostic_program(count))
    (reference/'NC/SYNTH.log').write_text(fixture['report'].replace('FAIL*', 'PASS '))
    (reference/'index.json').write_text(json.dumps({'programs': {'SYNTH': {'module': 'NC'}}}))
    (reference/'report.pl').write_text('')
    (reference/'cobc-version.txt').write_text('synthetic compiler')
    data = tmp_path/'data'
    payload = generate(reference, tmp_path/'mutated', data)
    entry = payload['programs']['SYNTH']
    assert not entry['eligible'] and not entry['mutation_candidate']
    assert entry['reasons'] == ['fewer than 4 supported sites']
    assert entry['mutable_sites'] == 0
    assert len(entry['diagnostic_changes']) == 3 * count
    public = json.loads((data/'eligibility.json').read_text())
    assert 'fewer than 4 supported sites' in public['programs'][0]['reasons']
    assert public['mutation_summary']['insufficient_sites'] == 1


def test_continued_diagnostic_literals_preserve_physical_columns():
    from scripts.mutate_suite import diagnostic_edits
    source = diagnostic_program().replace(
        '           MOVE "EXPECTED SUB001" TO RE-MARK.',
        '           MOVE "EXPECTED\n'
        '      * COMMENT BETWEEN CONTINUATION LINES\n'
        '      -    "SUB001 ERROR SUB001" TO RE-MARK.')
    changed, details = mutate(source, 'SYNTH')
    assert changed.count('      -    "?????? ERROR ??????" TO RE-MARK.') == 6
    assert len(source) == len(changed)
    edits, audit = diagnostic_edits(source, supported_sites(source))
    assert details['diagnostic_changes'] == audit
    assert len(audit) == 18
    for a, b, replacement in edits:
        assert '\n' not in replacement
        assert b-a == len(replacement)
        assert changed[a:b] == replacement


@pytest.mark.parametrize('sites,reason', [(3, 'fewer than 4 supported sites'),
                                         (18, 'incorrect mutation count')])
def test_validation_enforces_site_count(synthetic_mutation, sites, reason):
    payload = synthetic_mutation['payload']
    payload['programs']['SYNTH']['mutable_sites'] = sites
    with pytest.raises(ValueError, match=reason):
        validate_mutated(synthetic_mutation['tree'], payload)


def test_unknown_fields_are_not_selected(synthetic_mutation):
    source = synthetic_mutation['original'].replace('01 DATA-ITEM PIC 99.', '01 OTHER PIC 99.')
    assert not find_sites(source)
    source = synthetic_mutation['original'].replace('01 CORRECT-N PIC -9(9).9(9).', '01 OTHER PIC X.')
    assert not find_sites(source)
