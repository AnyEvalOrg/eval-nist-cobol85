"""Source-derived CCVS paragraph identities and private mutation evidence checks.

PAR-NAME is not necessarily the executing COBOL paragraph. Its literal MOVE
may occur in an INIT or WRITE paragraph; PRINT-DETAIL overlays a .NN subtest
suffix. Compare the source-derived printed label and the planted expected value,
so renamed/truncated report labels cannot be mistaken for unplanted failures.
The whole normalized evidence (including reference annotations) remains scored.
"""
from decimal import Decimal, InvalidOperation
import re

# Source audits for non-linear REC-CT updates. IC222A INIT jumps bypass DELETE
# blocks (whose ADDs are textually between INIT and TEST). NC252A RDF-TEST-11's
# unmutated successful comparison jumps to RDF-TEST-12, bypassing failure-only
# counter assignments. No planted site lies on either skipped path.
COUNTER_OVERRIDES = {
    ('IC222A', 'CALL-TEST-1-2'): 2,
    ('IC222A', 'CALL-TEST-5-2'): 2,
    ('IC222A', 'CALL-TEST-7-2'): 2,
    ('NC252A', 'RENAM-TEST-15'): 0,
    ('NC252A', 'COMP-TEST-33'): 0,
    ('NC252A', 'COMP-TEST-44'): 0,
}


def report_paragraph(source, site):
    from scripts.build_dataset import active
    # Stop at the first PRINT-DETAIL following this site's paired CORRECT MOVE,
    # exactly the boundary required by the matcher. Include WRITE's PAR-NAME.
    lines = source.splitlines(keepends=True)
    last_line = max(r['line'] for r in site['replacements'])
    tail = active(''.join(lines[last_line - 1:]))
    end = re.search(r'\bPERFORM\s+PRINT-DETAIL\b', tail)
    if end is None:
        raise ValueError(f"{site['paragraph']}: no PRINT-DETAIL")
    code = active(''.join(lines[:last_line - 1])) + '\n' + tail[:end.start()]
    names = list(re.finditer(r'''\bMOVE\s+["']([^"']+)["']\s+TO\s+PAR-NAME\b''', code))
    if not names:
        raise ValueError(f"{site['paragraph']}: no literal PAR-NAME assignment")
    width = re.search(r'\bPAR-NAME\.\s+03\s+FILLER\s+PIC(?:TURE)?\s+X\((\d+)\)', code)
    if width is None:
        raise ValueError(f"{site['paragraph']}: unsupported PAR-NAME layout")
    name = names[-1][1].strip()
    # IX diagnostic paragraphs print a blank-verdict detail before FAIL. Their
    # PRINT-DETAIL clears PAR-NAME (REC-CT is initialized to zero and never
    # assigned). Trace only this provable, non-branching helper idiom.
    full = active(source)
    if not re.search(r'\b(?:TO|GIVING)\s+REC-CT\b', full):
        for call in re.finditer(r'\bPERFORM\s+([A-Z0-9-]+)', code[names[-1].end():]):
            routine = re.search(r'(?m)^' + re.escape(call[1]) + r'\.\s*\n(.*?)(?=^[A-Z0-9][A-Z0-9-]*\.|\Z)', full, re.S | re.M)
            if (routine and re.search(r'\bPERFORM\s+PRINT-DETAIL\b', routine[1])
                    and not re.search(r'\bIF\b|\bGO\b', routine[1])
                    and re.search(r'IF\s+REC-CT\s+EQUAL\s+TO\s+ZERO\s+MOVE\s+SPACE\s+TO\s+PAR-NAME', full)):
                name = ''
    counter = 0
    for update in re.finditer(r'\b(MOVE|ADD|SUBTRACT)\s+(ZERO(?:ES|S)?|[0-9]+)\s+(?:TO|FROM)\s+REC-CT\b', code):
        operand = 0 if update[2].startswith('ZERO') else int(update[2])
        counter = operand if update[1] == 'MOVE' else counter + (operand if update[1] == 'ADD' else -operand)
    program = re.search(r'PROGRAM-ID\.\s+([A-Z0-9-]+)', full)
    counter = COUNTER_OVERRIDES.get((program[1] if program else '', site['paragraph']), counter)
    if counter:
        name = name.ljust(int(width[1]))[:int(width[1])] + f'.{counter % 100:02d}'
    return name, int(width[1])


def paragraph_matches(row, identity):
    return row[3] == identity[0]


def correct_matches(row, site, source):
    evidence = dict(row[4])
    if sorted(label for label, _ in row[4]) != ['computed', 'correct']:
        return False
    # A/N and numeric redefinitions occupy the first 20 columns. ANSI-REFERENCE
    # is adjacent, not part of the expected value. X includes two padding
    # columns, then ANSI-REFERENCE when that field exists (otherwise 70).
    width = (22 if 'COR-ANSI-REFERENCE' in source else 70) if site['kind'] == 'X' else 20
    printed = evidence['correct'][:width].rstrip()
    literal = site['replacements'][1]['mutated']
    if literal.startswith(('"', "'")):
        quote = literal[0]
        return printed == literal[1:-1].replace(quote * 2, quote).rstrip()
    try:
        return Decimal(printed.strip()) == Decimal(literal)
    except InvalidOperation:
        return False


def mutation_evidence(source, sites, normalized):
    failures = [r for r in normalized if r[0] == 'row' and r[2] == 'FAIL']
    identities = [report_paragraph(source, site) for site in sites]
    candidates = []
    unplanted, mismatched = [], []
    for row in failures:
        matching = [i for i, identity in enumerate(identities) if paragraph_matches(row, identity)]
        if not matching:
            unplanted.append(row[3])
            candidates.append([])
            continue
        evidenced = [i for i in matching if correct_matches(row, sites[i], source)]
        if not evidenced:
            mismatched.append(row[3])
        candidates.append(evidenced)
    assigned = {}

    def assign(site, seen):
        for index, matches in enumerate(candidates):
            if site not in matches or index in seen:
                continue
            seen.add(index)
            if index not in assigned or assign(assigned[index], seen):
                assigned[index] = site
                return True
        return False

    covered = {i for i in range(len(sites)) if assign(i, set())}
    missing = [s['paragraph'] for i, s in enumerate(sites) if i not in covered]
    return dict(fail_rows=len(failures), unplanted=sorted(set(unplanted)),
                incorrect_evidence=sorted(set(mismatched)), missing_sites=missing)
