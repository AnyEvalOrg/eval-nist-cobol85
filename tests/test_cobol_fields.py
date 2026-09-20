"""Format constraints are checked before sampling and against the real manifest."""
import hashlib
import json
import os
from pathlib import Path
import pytest
from scripts.cobol_fields import data_fields, picture_field, representable, replacement_options, resolve_field
from scripts.build_dataset import dependencies
from scripts.mutate_suite import find_sites, supported_sites, diagnostic_edits

ROOT = Path(__file__).resolve().parents[1]
# Capture the location before synthetic fixtures isolate configuration. Never
# read, expose or depend on the operator salt in these corpus checks.
OPERATOR_PRIVATE = os.environ.get('NIST_PRIVATE_DIR')


@pytest.mark.parametrize('pic,usage,sign,literal,bad', [
    ('9(5)', 'DISPLAY', None, '15059', '100000'),
    ('S9(5)', 'DISPLAY', 'TRAILING SEPARATE', '"15059-"', '"15Y59-"'),
    ('S9(5)', 'DISPLAY', 'LEADING SEPARATE', '"-15059"', '"15059-"'),
    ('S9(3)V99', 'COMP-3', None, '-123.45', '-123.456'),
    ('9(3)', 'BINARY', None, '123', '-123'),
    ('ZZ9.99-', 'DISPLAY', None, '" 12.34-"', '"012.34-"'),
    ('ZZ9.99-', 'DISPLAY', None, '-12.34', '1000'),
    ('999CR', 'DISPLAY', None, '"123CR"', '"12ZCR"'),
    ('X(9)', 'DISPLAY', None, '"001002003"', '"TOO-LONG-TEXT"'),
    ('A(3)', 'DISPLAY', None, '"ABC"', '"AB3"'),
    ('XX99', 'DISPLAY', None, '"AB12"', '"AB1Z"'),
])
def test_replacements_respect_picture_and_character_class(pic, usage, sign, literal, bad):
    field = picture_field(pic, usage, sign)
    assert representable(literal, field)
    assert not representable(bad, field)
    options = replacement_options(literal, literal, field, field)
    assert options
    for changed in options:
        assert changed != literal and len(changed) == len(literal)
        assert representable(changed, field)
        for before, after in zip(literal, changed):
            assert before.isdigit() == after.isdigit()
            assert before.isalpha() == after.isalpha()
            if not before.isalnum():
                assert after == before


def fixed(code):
    return ''.join('       ' + line + '\n' for line in code.splitlines())


def test_group_of_three_numeric_fields_and_usage_inheritance():
    fields = data_fields(fixed('''DATA DIVISION.
WORKING-STORAGE SECTION.
01 GROUP-ITEM.
   02 FIRST-ITEM PIC 999.
   02 NEXT-ITEM PIC 999 OCCURS 2 TIMES.
01 BINARY-GROUP USAGE COMP.
   02 BINARY-ITEM PIC 999.
01 SIGNED-GROUP SIGN TRAILING SEPARATE.
   02 SIGNED-ITEM PIC S9(5).
PROCEDURE DIVISION.'''))
    field = fields['GROUP-ITEM']
    assert representable('"001002003"', field)
    assert not representable('"0010020Z3"', field)
    options = replacement_options('"001002003"', '"001002003"', field, picture_field('X(20)'))
    assert options and all(s[1:-1].isdigit() for s in options)
    assert fields['BINARY-ITEM']['usage'] == 'COMP'
    assert fields['BINARY-GROUP'] is None
    assert representable('"15059-"', fields['SIGNED-GROUP'])
    assert representable('"15059-"', fields['SIGNED-ITEM'])


@pytest.mark.parametrize('description', ['PIC +++9', 'PIC 9(4) USAGE COMP-1',
                                         'PIC 9(3) OCCURS 1 TO 9 DEPENDING ON N',
                                         'PIC X(4) USAGE NATIONAL', 'PIC 999 COMP-X',
                                         'PIC X(4) USAGE DISPLAY-1', 'PIC 999E+99'])
def test_unsupported_layouts_are_rejected(description):
    fields = data_fields(fixed('DATA DIVISION.\nWORKING-STORAGE SECTION.\n01 UNKNOWN ' + description + '.\nPROCEDURE DIVISION.'))
    assert not fields['UNKNOWN']


def test_correct_field_capacity_constrains_replacement():
    assert not replacement_options('123', '123', picture_field('999'), picture_field('99'))
    options = replacement_options('12.34', '12.34', picture_field('99V99'), picture_field('-99.99'))
    assert options and all(representable(v, picture_field('-99.99')) for v in options)


def test_every_private_manifest_literal_is_representable():
    if not OPERATOR_PRIVATE:
        pytest.skip('Operator private manifest required for corpus representability audit')
    path = Path(OPERATOR_PRIVATE)/'mutations.json'
    if not path.is_file():
        pytest.skip('Regenerate the operator private manifest before the corpus audit')
    payload = json.loads(path.read_text())
    checked = 0
    for name, entry in payload['programs'].items():
        source = (ROOT/'reference'/entry['source_path']).read_bytes().decode('latin1')
        fields = data_fields(source)
        copies, libraries = dependencies(ROOT/'reference'/entry['source_path'], ROOT/'reference')
        sites = {s['spans'][0][0]: s for s in find_sites(source, dependency_sources=(*copies.values(), *libraries.values()))}
        mutated = (ROOT/'reference-mutated'/entry['source_path']).read_bytes()
        assert hashlib.sha256(mutated).hexdigest() == entry['mutated_sha256'], name
        source_lines = source.splitlines(keepends=True)
        changed_lines = mutated.decode('latin1').splitlines()
        expected_edits, expected_audit = diagnostic_edits(source, supported_sites(source))
        assert entry['diagnostic_changes'] == expected_audit, name
        if name == 'IC108A':
            assert {329, 341, 353} <= {e['line'] for e in expected_audit}, name
        for a, b, replacement in expected_edits:
            assert mutated[a:b] == replacement.encode('latin1'), name
        if entry['mutation_candidate']:
            assert entry['mutable_sites'] >= 4, name
            assert len(entry['mutations']) == min(max(2, round(0.25 * len(sites))), len(sites)//2), name
        for mutation in entry['mutations']:
            first = mutation['replacements'][0]
            offset = sum(len(l) for l in source_lines[:first['line']-1]) + first['column']-1
            assert offset in sites, name
            site = sites[offset]
            pair = (resolve_field(fields, site['item']), resolve_field(fields, 'CORRECT-'+site['kind']))
            for replacement, field in zip(mutation['replacements'], pair):
                old, new = replacement['original'], replacement['mutated']
                assert len(old) == len(new), name
                assert representable(new, field), name
                assert all(a.isdigit() == b.isdigit() and a.isalpha() == b.isalpha() for a, b in zip(old, new)), name
                line, col = replacement['line']-1, replacement['column']-1
                assert changed_lines[line][col:col+len(new)] == new, name
                checked += 1
    assert checked > 0


def test_all_generated_cobol_comments_are_uniformly_scrubbed():
    from scripts.mutate_suite import scrub_comments
    for path in (ROOT/'reference').rglob('*'):
        if path.is_file() and (path.suffix in {'.CBL', '.SUB'} or path.parent.name in {'copy', 'copyalt'}):
            dest = ROOT/'reference-mutated'/path.relative_to(ROOT/'reference')
            if not dest.exists():
                continue  # Non-indexed upstream utilities are not shipped.
            original = path.read_bytes().decode('latin1').splitlines()
            changed = dest.read_bytes().decode('latin1').splitlines()
            expected = scrub_comments(path.read_bytes().decode('latin1')).splitlines()
            assert len(changed) == len(original), path.name
            for before, after, scrubbed in zip(original, changed, expected):
                if before[6:7] in {'*', '/'}:
                    assert after == scrubbed and not after[7:].strip(), path.name


def test_full_picture_tokens_and_nearest_usage_are_resolved():
    fields = data_fields(fixed('DATA DIVISION.\nWORKING-STORAGE SECTION.\n01 MIXED USAGE COMP.\n   02 PRINTED PIC 999CR USAGE DISPLAY.\n01 BAD-INHERITANCE\n') + '      -    USAGE COMP.\n' + fixed('   02 UNKNOWN PIC 999.\nPROCEDURE DIVISION.'))
    assert fields['PRINTED']['usage'] == 'DISPLAY'
    assert fields['PRINTED']['picture'] == '999CR'
    assert fields['UNKNOWN'] is None
