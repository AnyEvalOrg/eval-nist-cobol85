#!/usr/bin/env python3
"""Deterministic, conservative fixed-format CCVS expectation mutation.

Supported idioms: inline ELSE; GO TO a nearby FAIL paragraph; fall-through
FAIL after a conditional PASS/GO TO WRITE. Match through PRINT-DETAIL, never
through another IF. Reject compound predicates, continued literals, ambiguous
CORRECT moves, and missing computed-data evidence. Equality/inequality and
symbolic ordering predicates are recognized; execution validates every site.
Also support direct NOT equality jumps to a local FAIL block with only evidence
and diagnostic MOVEs. Selection requires at least six supported sites.
"""
from __future__ import annotations
import argparse
from decimal import Decimal
import hashlib
import hmac
import json
from pathlib import Path
import random
import re
import sys
import tempfile

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT))
from scripts.build_dataset import _build, build, read
from scripts.cobol_fields import data_fields, resolve_field, replacement_options, paired_literal
from scripts.mutation_private import mutation_salt, salt_sha256, private_manifest_path, check_salt, write_private

LITERAL = r'''(?:"(?:[^"\n]|"")*"|'(?:[^'\n]|'')*'|[+-]?(?:\d+(?:\.\d+)?|\.\d+))'''
ITEM = r'[A-Z][A-Z0-9-]*(?:\s*\([^\n()]+\))?'
CONDITION = re.compile(r'\bIF\s+(?P<item>' + ITEM + r')\s+(?:IS\s+)?(?P<op>NOT\s+EQUAL(?:\s+TO)?|EQUAL(?:\s+TO)?|=|<|>)\s*(?P<literal>' + LITERAL + r')(?=\s|\.(?:\s|$))', re.I)
EXTENDED_CONDITION = re.compile(CONDITION.pattern.replace('NOT\\s+EQUAL', 'NOT\\s*=|NOT\\s+EQUAL'), re.I)
CORRECT = re.compile(r'\bMOVE\s+(?P<literal>' + LITERAL + r')\s+TO\s+CORRECT-(?P<kind>N|A|X|18V0|0V18|4V14|14V4)\b', re.I)
ALGORITHM = 'hmac-sha256-program-v4-six-sites-quarter-uniform-diagnostics'


def value(literal):
    return literal[1:-1] if literal.startswith(('"', "'")) else Decimal(literal)


def source_code(source, *, continuations=False):
    lines = source.splitlines(keepends=True)
    code, offsets = [], []
    offset = 0
    quote = None
    for line in lines:
        # Site matching excludes continuations; diagnostic scrubbing joins
        # continued strings with a map back to every physical source byte.
        active = len(line) > 6 and line[6] in (' -' if continuations else ' ')
        if continuations and not active:
            offset += len(line)
            continue
        text = line[7:72].rstrip('\r\n') if active else ''
        column = 7
        if continuations and line[6] == '-' and quote:
            column += len(text) - len(text.lstrip())
            text = text.lstrip()
            if text.startswith(quote):
                text = text[1:]
                column += 1
            # Keep literal padding but omit the physical line break and the
            # repeated opening delimiter required by fixed-format COBOL.
            code[-1] = code[-1][:-1]
            offsets.pop()
        code.append(text.rstrip('\r\n') + '\n')
        offsets.extend(range(offset + column, offset + column + len(code[-1])-1))
        offsets.append(-1)
        if continuations:
            i = 0
            while i < len(text):
                if quote and text[i] == quote:
                    if i+1 < len(text) and text[i+1] == quote:
                        i += 2
                        continue
                    quote = None
                elif not quote and text[i] in ('"', "'"):
                    quote = text[i]
                i += 1
        offset += len(line)
    return ''.join(code), offsets


def find_sites(source, extended=True):
    code, offsets = source_code(source)
    sites = []
    fields = data_fields(source)
    for m in (EXTENDED_CONDITION if extended else CONDITION).finditer(code):
        start = m.end()
        print_detail = re.search(r'\bPERFORM\s+PRINT-DETAIL\b', code[start:], re.I)
        if not print_detail or print_detail.start() > 2400:
            continue
        block = code[start:start + print_detail.end()]
        if re.search(r'\bIF\b|\bAND\b|\bOR\b', block, re.I):
            continue
        # Predicate must immediately lead to a PASS/FAIL action (no altered
        # program data, range bounds, or intermediate control-flow checks).
        inline = re.match(r'\s+(?:THEN\s+)?PERFORM\s+(?:PASS|FAIL)\b', block, re.I)
        jump = re.match(r'\s+(?:THEN\s+)?GO\s+TO\s+(?P<fail>[A-Z0-9-]+)\.?\s+'
                        r'(?:[A-Z0-9-]+\.\s+)?PERFORM\s+PASS\.?\s+GO\s+TO\s+(?P<write>[A-Z0-9-]+)\.', block, re.I)
        if not inline:
            if not (extended and jump and m['op'].upper().startswith('NOT')):
                continue
            # An inequality jumps straight to its own FAIL block. The equal
            # case prints PASS and bypasses that block. Only CCVS actions are
            # allowed; no performed user code or data changes on the fail path.
            fail = re.search(r'(?m)^' + re.escape(jump['fail']) + r'\.\s*\n(.*?)'
                             r'^' + re.escape(jump['write']) + r'\.', block, re.S | re.M)
            if not fail or not re.fullmatch(
                    r'(?:\s+|PERFORM\s+FAIL\.?|MOVE\s+(?:' + LITERAL + '|' + ITEM + r')\s+TO\s+[A-Z0-9-]+\.?)+',
                    fail[1], re.I):
                continue
            moves = re.findall(r'\bTO\s+([A-Z0-9-]+)', fail[1], re.I)
            if any(not (v.startswith(('COMPUTED-', 'CORRECT-')) or v in {'RE-MARK', 'ANSI-REFERENCE'}) for v in moves):
                continue
        if not all(re.search(r'\bPERFORM\s+' + p + r'\b', block, re.I) for p in ('PASS', 'FAIL')):
            continue
        computed = re.search(r'\bMOVE\s+' + re.escape(m['item']) + r'\s+TO\s+COMPUTED-(N|A|X|18V0|0V18|4V14|14V4)\b', block, re.I)
        matches = list(CORRECT.finditer(block))
        if not computed or len(matches) != 1:
            continue
        correct = matches[0]
        if correct['kind'] != computed[1] or value(correct['literal']) != value(m['literal']):
            continue
        # Numeric formatting in IF and CORRECT may differ (+73 versus 73).
        if isinstance(value(m['literal']), Decimal) and re.sub(r'^[+]', '', m['literal']) != re.sub(r'^[+]', '', correct['literal']):
            continue
        spans = [m.span('literal'), (start + correct.start('literal'), start + correct.end('literal'))]
        if any(-1 in offsets[a:b] for a, b in spans):
            continue
        paragraph = re.findall(r'(?m)^([A-Z0-9][A-Z0-9-]*)\.', code[:m.start()])
        if not paragraph or (not re.search(r'TEST|CHECK', paragraph[-1]) and (inline or not extended)):
            continue
        field = resolve_field(fields, m['item'])
        correct_field = resolve_field(fields, 'CORRECT-' + correct['kind'])
        options = replacement_options(m['literal'], correct['literal'], field, correct_field)
        if not options:
            continue
        sites.append(dict(item=m['item'], field=field, correct_field=correct_field, options=options, paragraph=paragraph[-1], operator=m['op'], kind=correct['kind'],
                          spans=[(offsets[a], offsets[b-1]+1) for a, b in spans],
                          literals=[m['literal'], correct['literal']]))
    # Do not mutate a shared failure move twice.
    counts = {}
    for site in sites:
        key = tuple(site['spans'][1]); counts[key] = counts.get(key, 0) + 1
    return [s for s in sites if counts[tuple(s['spans'][1])] == 1]


def comment_edits(source):
    """Blank every fixed-format comment independently of sites, keys or values.

    Apply even outside test paragraphs: prose and continuation comments may
    encode expectations in words. Preserve indicators, widths and coordinates.
    """
    edits, audit, offset = [], [], 0
    for number, line in enumerate(source.splitlines(keepends=True), 1):
        if len(line) > 6 and line[6] in '*/':
            old = line[7:].rstrip('\r\n')
            if old.strip():
                changed = ' ' * len(old)
                edits.append((offset + 7, offset + 7 + len(old), changed))
                audit.append(dict(line=number, column=8, action='strip', original=old, mutated=changed))
        offset += len(line)
    return edits, audit


def scrub_comments(source):
    edits, _ = comment_edits(source)
    for a, b, replacement in reversed(edits):
        source = source[:a] + replacement + source[b:]
    return source


def diagnostic_edits(source, sites):
    """Scrub expectation echoes around every supported site, before sampling.

    Preserve the actual IF/CORRECT operands, including unselected sites. All
    other string literals in the site's paragraph and its diagnostic paragraphs
    (direct branch targets or fall-through CORRECT blocks) are scrubbed uniformly.
    Collect matches against the original
    text so shared paragraphs and overlapping substrings are order independent.
    """
    code, offsets = source_code(source, continuations=True)
    strings = list(re.finditer(r'''"(?:[^"\n]|"")*"|'(?:[^'\n]|'')*' ''', code, re.X))
    masked = list(code)
    for literal in strings:
        masked[literal.start():literal.end()] = ' ' * len(literal[0])
    masked = ''.join(masked)
    headers = list(re.finditer(r'(?m)^([A-Z0-9][A-Z0-9-]*)\.', masked))
    paragraphs = {m[1]: (m.start(), headers[i+1].start() if i+1 < len(headers) else len(code))
                  for i, m in enumerate(headers)}
    protected = {tuple(span) for site in sites for span in site['spans']}
    replacements = {}
    for site in sites:
        a, b = paragraphs[site['paragraph']]
        targets = re.findall(r'\bGO\s+TO\s+([A-Z0-9-]+)\b', masked[a:b], re.I)
        # Equality/PASS forms fall through to their FAIL paragraph instead of
        # naming it in GO TO. Its paired CORRECT operand identifies it exactly.
        targets += [name for name, (start, end) in paragraphs.items()
                    if offsets[start] <= site['spans'][1][0]
                    < (offsets[end] if end < len(code) else len(source))]
        ranges = [paragraphs[name] for name in {site['paragraph'], *targets} if name in paragraphs]
        original = site['literals'][0]
        needle = original[1:-1] if original.startswith(('"', "'")) else original
        if not needle:
            continue
        for literal in strings:
            if not any(start <= literal.start() < end for start, end in ranges):
                continue
            span = (offsets[literal.start()], offsets[literal.end()-1]+1)
            if span in protected:
                continue
            body = literal[0][1:-1]
            start = 0
            while (start := body.find(needle, start)) != -1:
                changed = replacements.setdefault(literal.span(), list(literal[0]))
                changed[start+1:start+1+len(needle)] = '?' * len(needle)
                start += 1
    edits, audit = [], []
    for (start, end), characters in sorted(replacements.items()):
        # A continued literal has noncontiguous source coordinates. Audit each
        # physical fragment separately, preserving indicators and delimiters.
        boundaries = [start] + [i for i in range(start+1, end) if offsets[i] != offsets[i-1]+1] + [end]
        for left, right in zip(boundaries, boundaries[1:]):
            a, b = offsets[left], offsets[right-1]+1
            changed = ''.join(characters[left-start:right-start])
            if changed == source[a:b]:
                continue
            edits.append((a, b, changed))
            audit.append(dict(line=source.count('\n', 0, a)+1,
                              column=a-source.rfind('\n', 0, a),
                              original=source[a:b], mutated=changed))
    return edits, audit


def mutate(source, name, *, select=True):
    salt = mutation_salt()
    sites = find_sites(source)
    seed = hmac.new(salt, name.encode('utf-8'), hashlib.sha256).digest()
    rng = random.Random(int.from_bytes(seed, 'big'))
    count = min(max(3, round(0.25 * len(sites))), len(sites)//2)
    selected = rng.sample(sites, count) if select and len(sites) >= 6 else []
    edits, manifest = [], []
    for site in sorted(selected, key=lambda s: s['spans'][0]):
        original = site['literals'][0]
        mutated = rng.choice(site['options'])
        paired = paired_literal(mutated, original, site['literals'][1])
        replacements = []
        for (a, b), old, new in zip(site['spans'], site['literals'], (mutated, paired)):
            assert len(old) == len(new) and source[a:b] == old
            edits.append((a, b, new))
            replacements.append(dict(line=source.count('\n', 0, a)+1,
                                     column=a-source.rfind('\n', 0, a), original=old, mutated=new))
        manifest.append(dict(item=site['item'], field=site['field'], correct_field=site['correct_field'], paragraph=site['paragraph'], operator=site['operator'], kind=site['kind'], replacements=replacements))
    comments, audit = comment_edits(source)
    edits.extend(comments)
    diagnostics, diagnostic_audit = diagnostic_edits(source, sites)
    edits.extend(diagnostics)
    for a, b, replacement in sorted(edits, reverse=True):
        source = source[:a] + replacement + source[b:]
    return source, dict(mutable_sites=len(sites), mutations=manifest, comment_changes=audit,
                        diagnostic_changes=diagnostic_audit)


def generate(reference, destination, data):
    fingerprint = salt_sha256()
    prior_path = private_manifest_path()
    prior_payload = json.loads(prior_path.read_text()) if prior_path.exists() else None
    if prior_payload is not None:
        check_salt(prior_payload)
    # Baseline eligibility comes from the original frozen reports, not from
    # missing mutated logs. The public builder never accepts this baseline.
    with tempfile.TemporaryDirectory() as tmp:
        _, baseline, _ = _build(reference, Path(tmp))
    decisions = {d['program']: d for d in baseline['programs']}
    prior = prior_payload['programs'] if prior_payload else {}
    programs = {}
    for name, entry in sorted(json.loads((reference/'index.json').read_text())['programs'].items()):
        rel = f'{entry["module"]}/{name}.CBL'
        source = read(reference/rel)
        changed, details = mutate(source, name, select=decisions[name]['eligible'])
        candidate = decisions[name]['eligible'] and len(details['mutations']) >= 3
        eligible = candidate
        reasons = [] if candidate else (['fewer than 6 supported sites'] if decisions[name]['eligible'] else decisions[name]['reasons'])
        programs[name] = dict(**details, eligible=eligible, reasons=reasons, source_path=rel,
                              original_sha256=hashlib.sha256(source.encode('latin1')).hexdigest(),
                              mutated_sha256=hashlib.sha256(changed.encode('latin1')).hexdigest(),
                              baseline=decisions[name])
        previous = prior.get(name, {})
        same = (previous.get('mutated_sha256') == programs[name]['mutated_sha256']
                and prior_payload.get('algorithm') == ALGORITHM) if prior_payload else False
        programs[name]['mutation_candidate'] = candidate
        programs[name]['needs_new_logs'] = candidate and (not same or previous.get('needs_new_logs', False))
        if same and candidate:
            for key in ('eligible', 'reasons', 'validation'):
                if key in previous:
                    programs[name][key] = previous[key]
        if programs[name]['needs_new_logs']:
            programs[name].update(eligible=False, reasons=['awaiting mutated logs'])
        dest = destination/rel
        dest.parent.mkdir(parents=True, exist_ok=True)
        changed_bytes = changed.encode('latin1')
        source_changed = not dest.exists() or dest.read_bytes() != changed_bytes
        if source_changed or (candidate and not same):
            dest.with_suffix('.log').unlink(missing_ok=True)
            dest.with_suffix('.out').unlink(missing_ok=True)
        if source_changed:
            dest.write_bytes(changed_bytes)
    for path in reference.rglob('*'):
        if path.is_file() and (path.suffix in {'.DAT', '.inp', '.SUB'} or path.parent.name in {'lib', 'copy', 'copyalt'} or path.name in {'index.json', 'report.pl', 'expand.pl', 'EXEC85.conf.in', 'cobc-version.txt'}):
            dest = destination/path.relative_to(reference)
            dest.parent.mkdir(parents=True, exist_ok=True)
            if path.name in {'index.json', 'cobc-version.txt'} and dest.exists():
                continue  # Preserve the installed operator execution receipts.
            content = path.read_bytes()
            if path.suffix in {'.CBL', '.SUB'} or path.parent.name in {'copy', 'copyalt'}:
                content = scrub_comments(content.decode('latin1')).encode('latin1')
            if not dest.exists() or dest.read_bytes() != content:
                dest.write_bytes(content)
    data.mkdir(parents=True, exist_ok=True)
    payload = dict(schema_version=2, algorithm=ALGORITHM, salt_sha256=fingerprint, programs=programs)
    write_private(prior_path, payload)
    # Pending new candidates are excluded explicitly; keep shipping the already
    # validated population. The builder promotes them after fresh logs arrive.
    build(destination, data)
    payload = json.loads(prior_path.read_text())
    programs = payload['programs']
    print(f'Mutated eligible programs: {sum(p["eligible"] for p in programs.values())}; excluded: {sum(not p["eligible"] for p in programs.values())}')
    return payload


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--reference', type=Path, default=ROOT/'reference')
    parser.add_argument('--output', type=Path, default=ROOT/'reference-mutated')
    parser.add_argument('--data', type=Path, default=ROOT/'nist_cobol85/data')
    args = parser.parse_args()
    try:
        generate(args.reference, args.output, args.data)
    except ValueError as error:
        parser.exit(1, str(error) + '\n')
