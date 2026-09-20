#!/usr/bin/env python3
"""Deterministic, conservative fixed-format CCVS expectation mutation.

Supported idioms: inline ELSE; GO TO a nearby FAIL paragraph; fall-through
FAIL after a conditional PASS/GO TO WRITE. Match through PRINT-DETAIL, never
through another IF. Reject compound predicates, continued literals, ambiguous
CORRECT moves, and missing computed-data evidence. Equality/inequality and
symbolic ordering predicates are recognized; execution validates every site.
For programs below the legacy three-site threshold, also support direct NOT
equality jumps to a local FAIL block with only evidence and diagnostic MOVEs.
"""
from __future__ import annotations
import argparse
from decimal import Decimal
import hashlib
import json
from pathlib import Path
import random
import re
import shutil
import sys
import tempfile

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT))
from scripts.build_dataset import _build, build, read

LITERAL = r'''(?:"(?:[^"\n]|"")*"|'(?:[^'\n]|'')*'|[+-]?(?:\d+(?:\.\d+)?|\.\d+))'''
ITEM = r'[A-Z][A-Z0-9-]*(?:\s*\([^\n()]+\))?'
CONDITION = re.compile(r'\bIF\s+(?P<item>' + ITEM + r')\s+(?:IS\s+)?(?P<op>NOT\s+EQUAL(?:\s+TO)?|EQUAL(?:\s+TO)?|=|<|>)\s*(?P<literal>' + LITERAL + r')(?=\s|\.(?:\s|$))', re.I)
EXTENDED_CONDITION = re.compile(CONDITION.pattern.replace('NOT\\s+EQUAL', 'NOT\\s*=|NOT\\s+EQUAL'), re.I)
CORRECT = re.compile(r'\bMOVE\s+(?P<literal>' + LITERAL + r')\s+TO\s+CORRECT-(?P<kind>N|A|X|18V0|0V18|4V14|14V4)\b', re.I)


def value(literal):
    return literal[1:-1] if literal.startswith(('"', "'")) else Decimal(literal)


def change(literal, rng):
    # Same byte width: never push code past fixed-format column 72.
    positions = [i for i, c in enumerate(literal) if c.isdigit()] if not literal.startswith(('"', "'")) else [i for i in range(1, len(literal)-1) if literal[i] not in "\"'"]
    if not positions:
        return None
    i = rng.choice(positions)
    alphabet = '0123456789' if not literal.startswith(('"', "'")) else 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789'
    c = rng.choice([c for c in alphabet if c != literal[i]])
    return literal[:i] + c + literal[i+1:]


def find_sites(source, extended=True):
    lines = source.splitlines(keepends=True)
    code, offsets = [], []
    offset = 0
    for line in lines:
        # Continuations are deliberately unsupported, not silently joined.
        text = line[7:72] if len(line) > 6 and line[6] == ' ' else ''
        code.append(text.rstrip('\r\n') + '\n')
        offsets.extend(range(offset + 7, offset + 7 + len(code[-1])-1))
        offsets.append(-1)
        offset += len(line)
    code = ''.join(code)
    sites = []
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
        sites.append(dict(paragraph=paragraph[-1], operator=m['op'], kind=correct['kind'],
                          spans=[(offsets[a], offsets[b-1]+1) for a, b in spans],
                          literals=[m['literal'], correct['literal']]))
    # Do not mutate a shared failure move twice.
    counts = {}
    for site in sites:
        key = tuple(site['spans'][1]); counts[key] = counts.get(key, 0) + 1
    return [s for s in sites if counts[tuple(s['spans'][1])] == 1]


def mutate(source, name):
    # Preserve every v1 selection (and therefore validated source/log pairs).
    # Broaden only programs that previously had fewer than three sites.
    legacy_sites = find_sites(source, extended=False)
    sites = legacy_sites if len(legacy_sites) >= 3 else find_sites(source)
    seed = hashlib.sha256(('nist-expectations-v1:' + name).encode()).hexdigest()
    rng = random.Random(int(seed, 16))
    selected = rng.sample(sites, max(3, (len(sites) + 5)//10)) if len(sites) >= 3 else []
    edits, manifest = [], []
    for site in sorted(selected, key=lambda s: s['spans'][0]):
        original = site['literals'][0]
        mutated = change(original, rng)
        if mutated is None:
            raise ValueError(f'{name}: literal cannot be changed')
        paired = mutated
        if site['literals'][1].startswith('+') and not original.startswith('+'):
            paired = '+' + mutated
        elif original.startswith('+') and not site['literals'][1].startswith('+'):
            paired = mutated[1:]
        replacements = []
        for (a, b), old, new in zip(site['spans'], site['literals'], (mutated, paired)):
            assert len(old) == len(new) and source[a:b] == old
            edits.append((a, b, new))
            replacements.append(dict(line=source.count('\n', 0, a)+1,
                                     column=a-source.rfind('\n', 0, a), original=old, mutated=new))
        manifest.append(dict(paragraph=site['paragraph'], operator=site['operator'], kind=site['kind'], replacements=replacements))
    for a, b, replacement in sorted(edits, reverse=True):
        source = source[:a] + replacement + source[b:]
    return source, dict(seed=seed, mutable_sites=len(sites), mutations=manifest)


def generate(reference, destination, data):
    # Baseline eligibility comes from the original frozen reports, not from
    # missing mutated logs. The public builder never accepts this baseline.
    with tempfile.TemporaryDirectory() as tmp:
        _, baseline, _ = _build(reference, Path(tmp))
    decisions = {d['program']: d for d in baseline['programs']}
    prior_path = data/'mutations.json'
    prior = json.loads(prior_path.read_text())['programs'] if prior_path.exists() else {}
    programs = {}
    for name, entry in sorted(json.loads((reference/'index.json').read_text())['programs'].items()):
        rel = f'{entry["module"]}/{name}.CBL'
        source = read(reference/rel)
        changed, details = mutate(source, name) if decisions[name]['eligible'] else (source, dict(mutable_sites=0, mutations=[]))
        candidate = decisions[name]['eligible'] and len(details['mutations']) >= 3
        eligible = candidate
        reasons = [] if candidate else (['fewer_than_3_mutable_sites'] if decisions[name]['eligible'] else decisions[name]['reasons'])
        programs[name] = dict(**details, eligible=eligible, reasons=reasons, source_path=rel,
                              original_sha256=hashlib.sha256(source.encode('latin1')).hexdigest(),
                              mutated_sha256=hashlib.sha256(changed.encode('latin1')).hexdigest(),
                              baseline=decisions[name])
        previous = prior.get(name, {})
        same = previous.get('mutated_sha256') == programs[name]['mutated_sha256']
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
        if not dest.exists() or dest.read_bytes() != changed.encode('latin1'):
            dest.with_suffix('.log').unlink(missing_ok=True)
            dest.with_suffix('.out').unlink(missing_ok=True)
            dest.write_bytes(changed.encode('latin1'))
    for path in reference.rglob('*'):
        if path.is_file() and (path.suffix in {'.DAT', '.inp', '.SUB'} or path.parent.name in {'lib', 'copy', 'copyalt'} or path.name in {'index.json', 'report.pl', 'expand.pl', 'EXEC85.conf.in', 'cobc-version.txt'}):
            dest = destination/path.relative_to(reference)
            dest.parent.mkdir(parents=True, exist_ok=True)
            if path.name in {'index.json', 'cobc-version.txt'} and dest.exists():
                continue  # Preserve the installed operator execution receipts.
            if not dest.exists() or dest.read_bytes() != path.read_bytes():
                shutil.copyfile(path, dest)
    data.mkdir(parents=True, exist_ok=True)
    payload = dict(schema_version=1, algorithm='nist-expectations-v1', programs=programs)
    (data/'mutations.json').write_text(json.dumps(payload, indent=2, sort_keys=True)+'\n')
    # Pending new candidates are excluded explicitly; keep shipping the already
    # validated population. The builder promotes them after fresh logs arrive.
    build(destination, data, data/'mutations.json')
    payload = json.loads((data/'mutations.json').read_text())
    programs = payload['programs']
    print(f'Mutated eligible programs: {sum(p["eligible"] for p in programs.values())}; excluded: {sum(not p["eligible"] for p in programs.values())}')
    return payload


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--reference', type=Path, default=ROOT/'reference')
    parser.add_argument('--output', type=Path, default=ROOT/'reference-mutated')
    parser.add_argument('--data', type=Path, default=ROOT/'nist_cobol85/data')
    args = parser.parse_args()
    generate(args.reference, args.output, args.data)
