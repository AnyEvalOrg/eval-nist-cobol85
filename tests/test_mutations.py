import copy
import hashlib
import json
from pathlib import Path
import pytest
from scripts.mutate_suite import mutate, find_sites, generate
from scripts.build_dataset import build, validate_mutated
from nist_cobol85.prompts import user_prompt
from test_scoring import record

ROOT = Path(__file__).resolve().parents[1]


def mutations():
    return json.loads((ROOT/'nist_cobol85/data/mutations.json').read_text())


def test_mutated_inventory_and_exact_edits():
    data = mutations()
    assert len(list((ROOT/'reference').glob('*/*.SUB'))) == 44
    assert len(list((ROOT/'reference-mutated').glob('*/*.SUB'))) == 44
    for name, item in data['programs'].items():
        original = (ROOT/'reference'/item['source_path']).read_bytes().decode('latin1')
        source = (ROOT/'reference-mutated'/item['source_path']).read_bytes().decode('latin1')
        assert hashlib.sha256(source.encode('latin1')).hexdigest() == item['mutated_sha256']
        if not item['mutations']:
            assert original == source
            if item['baseline']['eligible']: assert item['reasons'] == ['fewer_than_3_mutable_sites']
            continue
        changed, details = mutate(original, name)
        assert changed == source
        assert details['mutations'] == item['mutations']
        assert len(item['mutations']) == max(3, (item['mutable_sites']+5)//10)
        assert len(source) == len(original)
        restored = source.splitlines(keepends=True)
        for site in item['mutations']:
            assert len(site['replacements']) == 2
            for replacement in site['replacements']:
                line, col = replacement['line']-1, replacement['column']-1
                old, new = replacement['original'], replacement['mutated']
                assert old != new
                assert restored[line][col:col+len(new)] == new
                restored[line] = restored[line][:col] + old + restored[line][col+len(new):]
        assert ''.join(restored) == original


def fixed(code):
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


def test_manifest_is_private():
    fixture = record()
    assert user_prompt({**fixture, 'mutations': mutations(), 'original_literals': 'SECRET'}) == user_prompt(fixture)


def one_program(tmp_path):
    payload = copy.deepcopy(mutations())
    name, entry = next((n,p) for n,p in payload['programs'].items() if p['eligible'])
    payload['programs'] = {name: entry}
    path = tmp_path/entry['source_path']; path.parent.mkdir()
    path.write_bytes((ROOT/'reference-mutated'/entry['source_path']).read_bytes())
    return payload, path


def test_missing_log_refuses_but_zero_fail_is_ineligible(tmp_path):
    payload, path = one_program(tmp_path)
    with pytest.raises(ValueError, match='missing mutated log'):
        validate_mutated(tmp_path, payload)
    entry = next(iter(payload['programs'].values()))
    report = (ROOT/'reference-mutated'/entry['source_path']).with_suffix('.log').read_text()
    path.with_suffix('.log').write_text(report.replace('FAIL*', 'PASS '))
    validate_mutated(tmp_path, payload)
    assert not entry['eligible']
    assert entry['reasons'] == ['mutation did not bite']
    # A fresh execution can promote a runtime exclusion again.
    path.with_suffix('.log').write_text(report)
    validate_mutated(tmp_path, payload)
    assert entry['eligible'] and not entry['reasons']


def test_original_tree_cannot_be_built(tmp_path):
    with pytest.raises(ValueError, match='mutated source checksum mismatch'): build(ROOT/'reference', tmp_path)
    assert not list(tmp_path.iterdir())


def test_source_drift_refuses(tmp_path):
    payload, path = one_program(tmp_path)
    path.write_text('changed')
    with pytest.raises(ValueError, match='checksum mismatch'): validate_mutated(tmp_path, payload)


def test_supporting_inputs_are_copied_exactly():
    for path in (ROOT/'reference').rglob('*'):
        if path.is_file() and (path.suffix in {'.DAT','.inp','.SUB'} or path.parent.name in {'lib','copy','copyalt'}):
            assert (ROOT/'reference-mutated'/path.relative_to(ROOT/'reference')).read_bytes() == path.read_bytes()
    assert (ROOT/'reference-mutated/report.pl').read_bytes() == (ROOT/'reference/report.pl').read_bytes()


@pytest.mark.parametrize('unplanted', [False, True])
def test_real_mutated_single_program_build(tmp_path, unplanted):
    entry = mutations()['programs']['NC101A']
    tree = tmp_path/'tree'; (tree/'NC').mkdir(parents=True)
    (tree/entry['source_path']).write_bytes((ROOT/'reference-mutated'/entry['source_path']).read_bytes())
    (tree/'index.json').write_text(json.dumps({'programs': {'NC101A': {'module':'NC'}}}))
    (tree/'report.pl').write_text('')
    (tree/'cobc-version.txt').write_bytes((ROOT/'reference-mutated/cobc-version.txt').read_bytes())
    report = (ROOT/'reference-mutated/NC/NC101A.log').read_text()
    if unplanted:
        lines = report.splitlines(keepends=True)
        verdict_column = next(line.index('FAIL*') for line in lines if 'FAIL*' in line)
        passing = next(i for i, line in enumerate(lines) if line[verdict_column:verdict_column+6].strip() == 'PASS' and 'PARAGRAPH-NAME' not in line)
        lines[passing] = lines[passing][:verdict_column] + 'FAIL* ' + lines[passing][verdict_column+6:]
        report = ''.join(lines)
    (tree/'NC/NC101A.log').write_text(report)
    private = tmp_path/'mutations.json'
    private.write_text(json.dumps({'programs': {'NC101A': entry}}))
    records, eligibility, manifest = build(tree, tmp_path/'data', private)
    if unplanted:
        assert records == [] and eligibility['eligible'] == manifest['count'] == 0
        decision = eligibility['programs'][0]
        private_entry = json.loads(private.read_text())['programs']['NC101A']
        assert not private_entry['eligible'] and not decision['eligible']
        assert private_entry['reasons'] == decision['reasons'] == ['FAIL rows outside mutated sites']
        return
    assert len(records) == eligibility['eligible'] == 1
    assert records[0]['source'].encode('latin1') == (tree/entry['source_path']).read_bytes()
    assert records[0]['target'] == report
    assert manifest['protocol_version'] == 2
    assert manifest['mutation_sha256'] == hashlib.sha256(private.read_bytes()).hexdigest()
    assert 'mutations' not in records[0]



@pytest.mark.parametrize('program', ['ST118A', 'ST127A'])
def test_zero_fail_execution_exclusions_are_recorded(program):
    entry = mutations()['programs'][program]
    assert not entry['eligible']
    assert entry['reasons'] == ['mutation did not bite']
    decisions = json.loads((ROOT/'nist_cobol85/data/eligibility.json').read_text())['programs']
    decision = next(d for d in decisions if d['program'] == program)
    assert not decision['eligible'] and decision['reasons'] == entry['reasons']


@pytest.mark.parametrize('fault', ['unplanted', 'wrong_literal', 'missing_site', 'wrong_subtest'])
def test_bad_execution_evidence_is_excluded(tmp_path, fault):
    payload, path = one_program(tmp_path)
    entry = next(iter(payload['programs'].values()))
    report = (ROOT/'reference-mutated'/entry['source_path']).with_suffix('.log').read_text()
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


def test_legacy_selection_preserved():
    # The broadened matcher must not shift RNG sampling for v1 candidates.
    for name, item in mutations()['programs'].items():
        original = (ROOT/'reference'/item['source_path']).read_text()
        legacy = find_sites(original, extended=False)
        if len(legacy) >= 3 and item['baseline']['eligible']:
            assert item['mutable_sites'] == len(legacy)
            assert not item.get('needs_new_logs')


def test_numeric_evidence_formatting_and_annotations():
    from scripts.mutation_evidence import correct_matches
    site = {'kind': 'N', 'replacements': [{}, {'mutated': '+42.000'}]}
    row = ('row', '', 'FAIL', '', (('computed', '0'), ('correct', ' 000000042.000000000  VI-42')))
    assert correct_matches(row, site, '')
    assert not correct_matches(row[:4] + (row[4] + (('correct', '99'),),), site, '')
    site['replacements'][1]['mutated'] = '43'
    assert not correct_matches(row, site, '')


def test_new_candidate_waits_for_real_log_and_then_promotes(tmp_path):
    payload, path = one_program(tmp_path)
    entry = next(iter(payload['programs'].values()))
    entry.update(eligible=False, needs_new_logs=True, reasons=['awaiting mutated logs'])
    validate_mutated(tmp_path, payload)
    assert not entry['eligible'] and entry['needs_new_logs']
    path.with_suffix('.log').write_bytes((ROOT/'reference-mutated'/entry['source_path']).with_suffix('.log').read_bytes())
    validate_mutated(tmp_path, payload)
    assert entry['eligible'] and not entry['needs_new_logs']


def test_missing_site_cannot_borrow_another_sites_row():
    from scripts.mutation_evidence import mutation_evidence
    from nist_cobol85.normalization import normalize_report
    entry = mutations()['programs']['NC101A']
    path = ROOT/'reference-mutated'/entry['source_path']
    sites = [entry['mutations'][0], entry['mutations'][0]]
    evidence = mutation_evidence(path.read_text(), sites, normalize_report(path.with_suffix('.log').read_text()))
    assert evidence['missing_sites'] == [sites[0]['paragraph']]


def test_eligible_entry_cannot_bypass_validation_with_empty_mutations(tmp_path):
    payload, _ = one_program(tmp_path)
    entry = next(iter(payload['programs'].values()))
    entry.update(mutations=[], mutation_candidate=False)
    with pytest.raises(ValueError, match='fewer than 3 mutations'):
        validate_mutated(tmp_path, payload)
