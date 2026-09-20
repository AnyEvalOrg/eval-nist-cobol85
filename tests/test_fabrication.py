"""Corpus-wide source readers; neither reader sees the private expectations.

Give each attack an oracle *layout* (ordered feature/paragraph labels, totals,
DELETE/inspection counts), making these stronger than source-only row discovery.
All PASS/FAIL decisions and evidence still come exclusively from public source.
Validated programs use actual targets. Pending candidates additionally use private
planted-site witnesses, explicitly not substitutes for fresh execution logs.
"""
from collections import Counter
from decimal import Decimal
import gzip
import json
import os
from pathlib import Path

import pytest

from nist_cobol85.normalization import compare_reports, normalize_report
from scripts.build_dataset import dependencies, read
from scripts.mutate_suite import literal_tokens, source_code, supported_sites, value
from scripts.mutation_evidence import report_paragraph

ROOT = Path(__file__).resolve().parents[1]
OPERATOR_PRIVATE = os.environ.get('NIST_PRIVATE_DIR')


def printed(literal, kind):
    raw = value(literal)
    if isinstance(raw, str):
        return raw.rstrip()
    scale = {'N': 9, '18V0': 0, '0V18': 18, '4V14': 14, '14V4': 4}[kind]
    integer = {'N': 9, '18V0': 18, '0V18': 0, '4V14': 4, '14V4': 14}[kind]
    digits = f'{abs(raw):0{integer + (scale + 1 if scale else 0)}.{scale}f}'
    if not integer and digits.startswith('0.'):
        digits = digits[1:]
    return ('-' if raw < 0 else ' ') + digits


def frequency_reader(source, dependency_sources=()):
    """Infer one-character outliers from dominant expectations/visible values.

    Repeated IF/CORRECT pairs vote together. Literal occurrences elsewhere,
    including VALUE/MOVE operands and shipped dependencies, also supply guesses.
    No original source, private manifest, target verdict or target value is read.
    """
    sites = supported_sites(source)
    counts = Counter(value(s['literals'][0]) for s in sites)
    protected = {tuple(span) for s in sites for span in s['spans']}
    visible = Counter()
    for unit, own in [(source, True), *((s, False) for s in dependency_sources)]:
        code, offsets = source_code(unit, continuations=True)
        for token in literal_tokens(code):
            span = (offsets[token.start()], offsets[token.end()-1]+1)
            if not own or span not in protected:
                visible[value(token[0])] += 1
    predictions = {}
    for site in sites:
        expected = value(site['literals'][0])
        def neighbor(other):
            a, b = str(expected), str(other)
            return (type(expected) is type(other) and len(a) == len(b)
                    and sum(x != y for x, y in zip(a, b)) == 1)
        guesses = [v for v in counts.keys() | visible.keys() if neighbor(v)
                   and (counts[v] > counts[expected] or visible[v] > 0)]
        if not guesses:
            continue
        actual = max(guesses, key=lambda v: (visible[v] > 0, counts[v], visible[v], str(v)))
        # Recover the branch's verdict from the public action after the IF.
        code, _ = source_code(source)
        from scripts.mutate_suite import EXTENDED_CONDITION
        condition = next((m for m in EXTENDED_CONDITION.finditer(code)
                          if m['item'] == site['item'] and m['literal'] == site['literals'][0]), None)
        if condition is None:
            continue
        import re
        action = re.search(r'\b(?:PERFORM\s+(PASS|FAIL)|GO\s+TO\s+)', code[condition.end():])
        op = site['operator'].upper()
        predicate = actual != expected if op.startswith('NOT') else actual < expected if op == '<' else actual > expected if op == '>' else actual == expected
        true_pass = bool(action and action[1] == 'PASS')
        if predicate == true_pass:
            continue
        original = repr(actual) if isinstance(actual, str) else str(actual)
        evidence = (('computed', printed(original, site['kind'])),
                    ('correct', printed(site['literals'][1], site['kind'])))
        predictions[site['paragraph']] = evidence
        predictions[site['paragraph'][:22]] = evidence
        public_site = {'paragraph': site['paragraph'], 'replacements': [
            {'line': source.count('\n', 0, a)+1} for a, _ in site['spans']]}
        try:
            label, _ = report_paragraph(source, public_site)
        except ValueError:
            continue
        predictions[label] = evidence
    return predictions


def all_pass_reader(source, dependency_sources=()):
    return {}


def render(rows, total=None, deleted=0, inspected=0):
    lines = []
    for feature, paragraph, verdict, evidence in rows:
        lines.append(' ' + feature.ljust(20) + ' ' + verdict.ljust(6) + paragraph.ljust(22))
        for label, text in evidence:
            lines.append(' '*30 + ('       ' + label.upper() + '=').ljust(17) + text)
    failures = sum(row[2] == 'FAIL' for row in rows)
    total = len(rows) if total is None else total
    lines += [f'{total-failures-deleted-inspected} OF {total} TESTS WERE EXECUTED SUCCESSFULLY',
              f'{failures} TEST(S) FAILED', f'{deleted} TEST(S) DELETED',
              f'{inspected} TEST(S) REQUIRE INSPECTION']
    return '\n'.join(lines) + '\n'


def fabricate(target, predictions):
    """Only layout reaches the reader's predictions; erase target FAIL evidence."""
    normalized = normalize_report(target)
    rows = []
    for row in normalized:
        if row[0] == 'row':
            evidence = predictions.get(row[3], ())
            verdict = 'DELETE' if row[2] == 'DELETE' else 'FAIL' if evidence else 'PASS'
            rows.append((row[1], row[3], verdict, evidence))
    total = next(row[2] for row in normalized if row[0] == 'success')
    summaries = {r[1]: r[2] for r in normalized if r[0] == 'summary'}
    return render(rows, total, summaries.get('DELETED', 0), summaries.get('REQUIRE INSPECTION', 0))


@pytest.fixture(scope='module')
def corpus():
    tree = ROOT/'reference-mutated'
    index = json.loads((tree/'index.json').read_text())['programs']
    records = {r['task_id']: r for r in map(json.loads, gzip.decompress(
        (ROOT/'nist_cobol85/data/problems.jsonl.gz').read_bytes()).splitlines())}
    private = Path(OPERATOR_PRIVATE)/'mutations.json' if OPERATOR_PRIVATE else None
    payload = json.loads(private.read_text())['programs'] if private and private.is_file() else {}
    units = []
    for name, entry in index.items():
        path = tree/entry['module']/(name+'.CBL')
        copies, libraries = dependencies(path, tree)
        units.append((name, read(path), (*copies.values(), *libraries.values())))
    return units, records, payload


def assert_reader_rejected(corpus, reader):
    units, records, private = corpus
    executed = witnessed = visited = 0
    for name, source, deps in units:
        predictions = reader(source, deps)
        visited += 1
        if name in records:
            target = records[name]['target']
            assert not compare_reports(fabricate(target, predictions), target)[0], name
            executed += 1
        entry = private.get(name, {})
        if entry.get('mutation_candidate'):
            # Necessary planted-site behavior, without pretending to execute
            # COBOL. Source-only guesses must fail this easier, privileged task.
            rows = []
            for site in entry['mutations']:
                original = site['replacements'][0]['original']
                changed = site['replacements'][1]['mutated']
                rows.append(('FEATURE', site['paragraph'], 'FAIL', (
                    ('computed', printed(original, site['kind'])),
                    ('correct', printed(changed, site['kind'])))))
            target = render(rows)
            assert not compare_reports(fabricate(target, predictions), target)[0], name
            witnessed += 1
    assert visited == len(units) and visited > 0
    assert executed == len(records)
    assert executed or witnessed, 'Fresh logs or operator manifest required; no vacuous corpus pass'


def test_frequency_consistency_fabrication_is_incorrect_for_entire_corpus(corpus):
    assert_reader_rejected(corpus, frequency_reader)


def test_all_pass_fabrication_is_incorrect_for_entire_corpus(corpus):
    assert_reader_rejected(corpus, all_pass_reader)


@pytest.mark.parametrize('leak', ['frequency', 'visible', 'both'])
def test_frequency_reader_reproduces_reviewer_attack_with_full_evidence(leak):
    # Positive control: ensure the attack actually exploits the reported leak.
    from test_mutations import fixed
    source = fixed('').replace('01 DATA-ITEM PIC 99.',
        '01 DATA-ITEM PIC X(4) VALUE "GOOD".').replace(
        '01 CORRECT-N PIC -9(9).9(9).', '01 CORRECT-A PIC X(20).')
    if leak == 'frequency':
        source = source.replace(' VALUE "GOOD"', '')
    expected_rows = []
    expectations = ['GPOD', 'VOOD'] if leak == 'visible' else ['GOOD']*5 + ['GPOD', 'VOOD']
    for i, expected in enumerate(expectations):
        body = fixed(f'''TEST-{i}.
    IF DATA-ITEM = "{expected}"
       PERFORM PASS
    ELSE
       MOVE DATA-ITEM TO COMPUTED-A
       MOVE "{expected}" TO CORRECT-A
       PERFORM FAIL.
    PERFORM PRINT-DETAIL.''').split('       PROCEDURE DIVISION.\n')[1]
        source += body
        fail = expected != 'GOOD'
        expected_rows.append(('FEATURE', f'TEST-{i}', 'FAIL' if fail else 'PASS',
            (('computed', 'GOOD'), ('correct', expected)) if fail else ()))
    target = render(expected_rows)
    assert compare_reports(fabricate(target, frequency_reader(source)), target)[0]
    assert not compare_reports(fabricate(target, all_pass_reader(source)), target)[0]
    from scripts.mutate_suite import find_sites
    original_source = source.replace('"GPOD"', '"GOOD"').replace('"VOOD"', '"GOOD"')
    assert not find_sites(original_source)
