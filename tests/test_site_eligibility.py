"""Conservative recoverability checks, independent of selection and salt."""
import pytest
from scripts.mutate_suite import find_sites, supported_sites
from test_mutations import fixed


def sample(setup='', declarations=''):
    source = fixed(f'''TEST-ONE.
    {setup}
    IF DATA-ITEM = 42
       PERFORM PASS
    ELSE
       MOVE DATA-ITEM TO COMPUTED-N
       MOVE 42 TO CORRECT-N
       PERFORM FAIL.
    PERFORM PRINT-DETAIL.''')
    return source.replace('       PROCEDURE DIVISION.', declarations + '       PROCEDURE DIVISION.')


@pytest.mark.parametrize('extra', [
    '    MOVE 42 TO OTHER.', '    MOVE +042.00 TO OTHER.',
    '    IF OTHER = 42 CONTINUE END-IF.',
    '    MOVE "EXPECTED 42" TO RE-MARK.',
    "    MOVE '42' TO OTHER.",
])
def test_literal_occurrence_elsewhere_rejects(extra):
    source = sample() + fixed('OTHER-PARAGRAPH.\n' + extra).split('       PROCEDURE DIVISION.\n')[1]
    assert len(supported_sites(source)) == 1
    assert not find_sites(source)


def test_shared_expectations_reject_all_sites_and_value_occurrence():
    source = sample()
    body = source.split('       PROCEDURE DIVISION.\n')[1]
    assert not find_sites(source + body.replace('TEST-ONE', 'TEST-TWO'))
    assert not find_sites(sample(declarations='       01 OTHER PIC 99 VALUE +042.0.\n'))


@pytest.mark.parametrize('setup,declarations', [
    ('MOVE 17 TO DATA-ITEM.', ''),
    ('IF OTHER = 9 MOVE 17 TO DATA-ITEM END-IF.', ''),
    ('MOVE 17 TO DATA-ITEM. COMPUTE DATA-ITEM = OTHER + 2.', ''),
    ('MOVE ZERO TO DATA-ITEM.', ''),
    ("MOVE X'3137' TO DATA-ITEM.", ''),
    ('MOVE OTHER TO DATA-ITEM.', '       01 OTHER PIC 99 VALUE 17.\n'),
    ('MOVE OTHER TO TEMP. MOVE TEMP TO DATA-ITEM.',
     '       01 OTHER PIC 99 VALUE 17.\n       01 TEMP PIC 99.\n'),
    ('MOVE 17 TO TEMP. MOVE TEMP TO DATA-ITEM.', '       01 TEMP PIC 99.\n'),
    ('INITIALIZE DATA-ITEM.', ''),
    ('SET DATA-ITEM TO 17.', ''),
    ('MOVE ALL "1" TO DATA-ITEM.', ''),
    ('MOVE CORRESPONDING OTHER TO DATA-ITEM.', ''),
])
def test_literal_data_flow_is_rejected_on_any_path(setup, declarations):
    assert not find_sites(sample(setup, declarations))


def test_computation_and_unresolved_data_flow_remain_supported():
    assert len(find_sites(sample('COMPUTE DATA-ITEM = OTHER + TEMP.'))) == 1
    assert len(find_sites(sample('MOVE OTHER TO DATA-ITEM.'))) == 1
    # A different test paragraph's assignment is outside the local rule.
    source = sample() + '       OTHER-TEST.\n           MOVE 17 TO DATA-ITEM.\n'
    assert len(find_sites(source)) == 1


@pytest.mark.parametrize('dependency', [
    '       01 OTHER PIC 99 VALUE 42.\n',
    '           MOVE +042.00 TO OTHER.\n',
    '           MOVE "EXPECTED\n      -    "42" TO OTHER.\n',
])
def test_copybook_and_library_literals_reject(dependency):
    assert not find_sites(sample(), dependency_sources=(dependency,))


def test_group_and_redefines_literal_writes_reject():
    source = sample('MOVE 17 TO PARENT.').replace(
        '01 DATA-ITEM PIC 99.', '01 PARENT.\n           02 DATA-ITEM PIC 99.')
    assert not find_sites(source)
    source = sample('MOVE 17 TO ALIAS.', '       01 ALIAS REDEFINES DATA-ITEM PIC 99.\n')
    assert not find_sites(source)


def test_shipped_dependency_closure_is_used_by_generation(tmp_path, synthetic_mutation):
    import json
    from scripts.mutate_suite import generate
    fixture = synthetic_mutation
    tree = tmp_path/'reference'
    (tree/'NC/lib').mkdir(parents=True)
    (tree/'copy').mkdir()
    source = fixture['original'].replace('       PROCEDURE DIVISION.',
        '       COPY VALUES-BOOK.\n       PROCEDURE DIVISION.\n           CALL "HELPER".')
    (tree/'NC/SYNTH.CBL').write_text(source)
    (tree/'copy/VALUES-BOOK').write_text('       01 KNOWN PIC 99 VALUE 42.\n')
    (tree/'NC/lib/HELPER.CBL').write_text('           MOVE 43 TO OTHER.\n')
    (tree/'NC/SYNTH.log').write_text(fixture['report'].replace('FAIL*', 'PASS '))
    (tree/'index.json').write_text(json.dumps({'programs': {'SYNTH': {'module': 'NC'}}}))
    (tree/'report.pl').write_text('')
    (tree/'cobc-version.txt').write_text('synthetic compiler')
    payload = generate(tree, tmp_path/'changed', tmp_path/'data')
    entry = payload['programs']['SYNTH']
    assert entry['mutable_sites'] == 4
    assert entry['mutation_candidate'] and len(entry['mutations']) == 2
    assert entry['needs_new_logs'] and not entry['eligible']


def test_comment_echo_rejects_before_uniform_scrubbing():
    assert not find_sites(sample() + '      * EXPECTED VALUE 42.\n')
    assert not find_sites(sample(), dependency_sources=('      * EXPECTED +042.0\n',))


def test_value_initialized_copybook_sender_rejects():
    source = sample('MOVE COPY-SENDER TO DATA-ITEM.')
    assert not find_sites(source, dependency_sources=(
        '       01 COPY-SENDER PIC 99 VALUE 17.\n',))
