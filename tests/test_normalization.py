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


@pytest.mark.parametrize('module,program', [('IX','IX210A'), ('NC','NC208A'), ('NC','NC211A'), ('NC','NC232A'), ('SQ','SQ126A')])
def test_real_blank_paragraph_rows_are_scored(module, program):
    report = (ROOT/'reference'/module/(program+'.log')).read_text()
    lines = report.splitlines()
    dropped = next(i for i, l in enumerate(lines) if l[22:28].strip() == 'PASS' and not l[28:50].strip())
    norm = normalize_report(report)
    assert sum(r[0]=='row' and r[2]=='PASS' and r[3]=='' for r in norm) == 1
    lines[dropped] = lines[dropped][:22] + 'FAIL* ' + lines[dropped][28:]
    assert not compare_reports('\n'.join(lines), report)[0]


def test_wide_blank_paragraph_and_heading():
    heading = '    FEATURE               PASS  PARAGRAPH-NAME                                                 REMARKS'
    row = ' ' + 'WIDE FEATURE'.ljust(24) + ' PASS  ' + ' '*17
    report = heading + '\n    TESTED                FAIL\n' + row
    assert normalize_report(report) == (('row','WIDE FEATURE','PASS',''),)
    assert not compare_reports(report.replace('PASS  '+' '*17, 'FAIL* '+' '*17), report)[0]


@pytest.mark.parametrize('computed,correct', [(' 000000042.000000000', ' 000000043.000000000'), ('A B C', 'A X C'), ('A'*69+'B', 'A'*69+'C'), ('', 'X')])
def test_fail_evidence_is_ordered_and_significant(computed, correct):
    row = ' ' + 'FEATURE'.ljust(20) + ' FAIL* ' + 'TEST-A'
    # Labels occupy 17 columns (including the initial seven spaces).
    comp = ' '*30 + '       COMPUTED=' .ljust(17) + computed.ljust(70)
    corr = ' '*30 + '       CORRECT =' .ljust(17) + correct.ljust(70)
    report = '\n'.join([row,comp,corr])
    assert compare_reports(report, report)[0]
    assert normalize_report(report)[0][4] == (('computed',computed),('correct',correct))
    assert not compare_reports('\n'.join([row,corr,comp]), report)[0]
    assert not compare_reports('\n'.join([row,comp]), report)[0]
    for index in (1,2):
        changed = [row,comp,corr]
        changed[index] = changed[index][:47] + 'Z' + changed[index][48:]
        assert not compare_reports('\n'.join(changed), report)[0]
