from pathlib import Path
import re
import pytest
from inspect_ai.scorer import CORRECT, INCORRECT
from nist_cobol85.normalization import normalize_report, compare_reports
from nist_cobol85.scoring import score_report

ROOT = Path(__file__).resolve().parents[1]


@pytest.mark.parametrize('module,program', [('NC', 'NC101A'), ('SQ', 'SQ102A'), ('RW', 'RW101A')])
def test_real_report_row_count_matches_reference_grader(module, program):
    directory = ROOT / 'reference' / module
    report = (directory / f'{program}.log').read_bytes().decode('latin1')
    match = re.search(rf'^{program}\.CBL\s+\d+\s+(\d+)', (directory / 'report.txt').read_text(), re.M)
    rows = [row for row in normalize_report(report) if row[0] == 'row']
    assert len(rows) == int(match[1])
    assert all(row[2] == 'PASS' for row in rows)


def test_multiword_feature_paragraph_suffix_and_remarks():
    row = ' ' + 'MULTIPLY BY'.ljust(20) + ' ' + 'PASS'.ljust(5) + ' ' + 'TEST-01 .02'.ljust(22) + ' '*8 + 'IGNORE THIS FAIL'
    assert normalize_report(row) == (('row', 'MULTIPLY BY', 'PASS', 'TEST-01 .02'),)
    assert normalize_report(row.replace('IGNORE THIS FAIL', 'OTHER REMARK')) == normalize_report(row)


def test_summaries_no_zero_and_decoration():
    report = '\f\r\n  002 OF 003 TESTS WERE EXECUTED SUCCESSFULLY\r\n NO TEST(S) FAILED\n 1 TEST(S) DELETED\n 000 TEST(S) REQUIRE INSPECTION'
    expected = (('success', 2, 3), ('summary', 'FAILED', 0), ('summary', 'DELETED', 1), ('summary', 'REQUIRE INSPECTION', 0))
    assert normalize_report(report) == expected


def test_header_and_nonverdict_mentions_ignored():
    header = ' FEATURE              PASS  PARAGRAPH-NAME                                                 REMARKS\n TESTED               FAIL'
    assert not normalize_report(header + '\n PASS FAIL DELETE are words\n' + ' '*80 + 'FAIL')


@pytest.mark.parametrize('token,verdict', [('PASS ', 'PASS'), ('FAIL*', 'FAIL'), ('DELETE', 'DELETE')])
def test_verdict_tokens(token, verdict):
    row = ' ' + 'FEATURE TEXT'.ljust(20) + ' ' + token.ljust(6) + 'PAR-TEST'.ljust(22)
    assert normalize_report(row)[0][2] == verdict


def test_self_consistency_and_single_verdict_mutation():
    text = (ROOT / 'reference/NC/NC101A.log').read_text()
    assert score_report(text, text).value == CORRECT
    # Change an actual data row, leaving the heading and summaries intact.
    changed = re.sub(r'(?m)^( MULTIPLY BY\s+)PASS', r'\1FAIL', text, count=1)
    score = score_report(changed, text)
    assert score.value == INCORRECT
    assert '92/93' in score.explanation
    assert text not in score.explanation


def test_order_and_summary_numbers_are_significant():
    row = ' ' + 'FEATURE TEXT'.ljust(20) + ' PASS  ' + 'TEST-A'
    other = row.replace('TEST-A', 'TEST-B')
    assert not compare_reports(other + '\n' + row, row + '\n' + other)[0]
    assert not compare_reports(row + '\n 1 TEST(S) FAILED', row + '\n NO TEST(S) FAILED')[0]
    assert not compare_reports('', '')[0]
