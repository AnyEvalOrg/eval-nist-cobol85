"""The sole REPORT comparison protocol (version 1).

Column offsets are zero-based and come from CCVS TEST-RESULTS layouts.
FAIL* is the printed FAIL token. Legacy ***** deletion decorations are not
verdict tokens: deletion totals are retained in the summary instead.
"""
import re

SUCCESS = re.compile(r'^\s*(\d+)\s+OF\s+(\d+)\s+TESTS WERE EXECUTED SUCCESSFULLY\s*$')
TOTAL = re.compile(r'^\s*(NO|\d+)\s+TEST\(S\)\s+(FAILED|DELETED|REQUIRE INSPECTION)\s*$')
# feature start/end, verdict start, paragraph start/end
LAYOUTS = {22: (1, 21, 22, 28, 50), 26: (1, 25, 26, 32, 49),
           44: (19, 43, 44, 1, 18)}


def normalize_report(report: str) -> tuple[tuple, ...]:
    """Keep ordered result tuples and numeric summaries; ignore all other text.

    Headings select the standard, wide, or paragraph-first CCVS layout; they
    are otherwise discarded. Without headings the standard layout applies.
    Whitespace *within* feature/paragraph fields remains significant.
    """
    normalized = []
    layout = LAYOUTS[22]
    for line in report.replace('\r\n', '\n').replace('\r', '\n').replace('\f', '\n').split('\n'):
        success = SUCCESS.fullmatch(line)
        total = TOTAL.fullmatch(line)
        if success:
            normalized.append(('success', int(success[1]), int(success[2])))
        elif total:
            normalized.append(('summary', total[2], 0 if total[1] == 'NO' else int(total[1])))
        elif all(word in line for word in ('FEATURE', 'PARAGRAPH-NAME', 'REMARKS')):
            layout = LAYOUTS.get(line.find('PASS'), layout)
        else:
            fs, fe, vs, ps, pe = layout
            # Six columns permit the explicit DELETE spelling, with no remarks.
            verdict = line[vs:vs + 6].strip()
            if verdict == 'FAIL*':
                verdict = 'FAIL'
            if verdict in {'PASS', 'FAIL', 'DELETE'} and line[ps:pe].strip():
                normalized.append(('row', line[fs:fe].strip(), verdict, line[ps:pe].strip()))
    return tuple(normalized)


def compare_reports(candidate: str, reference: str) -> tuple[bool, int, int]:
    actual, expected = normalize_report(candidate), normalize_report(reference)
    rows = [x for x in actual if x[0] == 'row']
    expected_rows = [x for x in expected if x[0] == 'row']
    matched = sum(a == b for a, b in zip(rows, expected_rows))
    return bool(expected_rows) and actual == expected, matched, len(expected_rows)
