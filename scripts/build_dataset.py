#!/usr/bin/env python3
"""Derive the offline task population from the frozen EXEC85 reference tree."""
from __future__ import annotations
import argparse
from collections import Counter
import gzip
import hashlib
import json
from pathlib import Path
import re
import sys

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT))
from nist_cobol85.normalization import normalize_report
from scripts.mutation_private import salt_sha256, private_manifest_path, check_salt, write_private

MODULES = 'NC SM IC SQ RL IX ST SG OB IF RW DB'.split()
SPECIAL = {'NC107A', 'NC113M', 'NC121M', 'NC220M', 'NC135A'}


def read(path):
    # Reversible byte-to-text transport; no replacement characters or newline loss.
    return path.read_bytes().decode('latin1')


def active(source):
    lines = []
    for line in source.splitlines():
        if len(line) <= 6 or line[6] in '*/':
            continue
        text = line[7:72]
        if line[6] == '-' and lines:
            text = text.lstrip()
            # Fixed-format continuation of a literal repeats its opening quote.
            if text.startswith(('"', "'")):
                text = text[1:]
            lines[-1] = lines[-1].rstrip() + text
        else:
            lines.append(text)
    return '\n'.join(lines)


def dependencies(path, reference):
    copies, libraries = {}, {}
    pending = [path]
    seen = set()
    lib_paths = {p.stem: p for p in (path.parent / 'lib').glob('*.CBL')}
    while pending:
        current = pending.pop()
        if current in seen:
            continue
        seen.add(current)
        source = read(current)
        code = active(source)
        # COPY can appear inside FD/01/77 declarations or even an ADD.
        # Consume literals first to avoid COPY words in FEATURE/RE-MARK strings.
        copy_pattern = r'''"(?:[^"]|"")*"|'(?:[^']|'')*'|(?<![\w-])COPY\s+([\w-]+)(?:\s+(?:OF|IN)\s+["']([^"']+)["'])?'''
        for match in re.finditer(copy_pattern, code, re.I):
            name, qualifier = match.groups()
            if name is None:
                continue
            directory = 'copyalt' if qualifier and 'copyalt' in qualifier else 'copy'
            resolved = reference / directory / name
            if not resolved.is_file():
                raise ValueError(f'{path.stem}: unresolved COPY {name}')
            key = resolved.relative_to(reference).as_posix()
            copies[key] = read(resolved)
            pending.append(resolved)
        # Dynamic CALL names are initialized with literals; take all lib-name
        # literals in CALL-bearing units, then close transitively over the libs.
        if re.search(r'\bCALL\s', code):
            literals = re.findall(r'[\"\']([A-Z0-9-]+)[\"\']', code)
            for name in literals:
                if name in lib_paths:
                    resolved = lib_paths[name]
                    libraries[resolved.relative_to(reference).as_posix()] = read(resolved)
                    pending.append(resolved)
    return dict(sorted(copies.items())), dict(sorted(libraries.items()))


def _build(reference: Path, output: Path, mutations=None):
    perl = read(reference / 'report.pl')
    sets = {name: set(re.findall(r'\$' + name + r'\{(\w+)\}\s*=\s*1;', perl))
            for name in ('comp_only', 'no_output', 'to_kill')}
    flags = dict(re.findall(r'^\$cobc_flags\{(\w+)\}\s*=\s*"([^"]+)";', perl, re.M))
    index = json.loads((reference / 'index.json').read_text())
    records, decisions = [], []
    input_hashes = {}
    for path in sorted(reference.rglob('*')):
        if path.is_file() and path.suffix in {'.CBL', '.SUB', '.DAT', '.inp', '.log'} or path.is_file() and path.parent.name in {'copy', 'copyalt'}:
            input_hashes[path.relative_to(reference).as_posix()] = hashlib.sha256(path.read_bytes()).hexdigest()
    for rel in ('index.json', 'report.pl', 'cobc-version.txt'):
        input_hashes[rel] = hashlib.sha256((reference / rel).read_bytes()).hexdigest()
    for name, entry in sorted(index['programs'].items()):
        module = entry['module']
        path = reference / module / (name + '.CBL')
        source = read(path)
        report = read(path.with_suffix('.log')) if path.with_suffix('.log').exists() else ''
        norm = normalize_report(report)
        rows = [r for r in norm if r[0] == 'row' and r[2] in {'PASS', 'FAIL'}]
        inspection = sum(r[2] for r in norm if r[:2] == ('summary', 'REQUIRE INSPECTION'))
        reasons = list(mutations['programs'][name]['reasons']) if mutations else []
        for key in sets:
            if name in sets[key]: reasons.append(key)
        if module == 'DB': reasons.append('compiler_specific_debugging')
        if name in SPECIAL: reasons.append('special_case_grader')
        if not report: reasons.append('missing_report')
        if not rows: reasons.append('no_pass_fail_rows')
        if not any(r[0] == 'success' for r in norm): reasons.append('missing_success_summary')
        inspection_note = None
        if inspection:
            if name == 'NC114M':
                inspection_note = ('Kept: one unconditional INSPT after fixed literal listing examples; '
                                   'REPORT bytes/counts do not read the compiler listing or depend on a human verdict. '
                                   'Source audit, not a claim of repeated execution.')
            elif name == 'SQ201M':
                inspection_note = ('Kept: fixed LINAGE/page-control exercises with literal page sizes and bounded loops; '
                                   'visual printer-layout checks do not feed back into counters or REPORT bytes. '
                                   'No clock/random/interactive input; source-audited determinism.')
            elif not reasons:
                raise ValueError(f'{name}: inspection determinism needs an explicit source audit')
            else:
                inspection_note = 'Excluded by independent eligibility rules; no determinism assertion needed.'
        decision = dict(program=name, module=module, source_path=path.relative_to(reference).as_posix(),
                        eligible=not reasons, reasons=reasons or ['self_checking_report'],
                        result_rows=len(rows), inspection_count=inspection, inspection_justification=inspection_note)
        decisions.append(decision)
        if reasons:
            continue
        copies, subs = dependencies(path, reference)
        stdin_path = next((path.with_suffix(ext) for ext in ('.inp', '.DAT') if path.with_suffix(ext).exists()), None)
        stdin = read(stdin_path) if stdin_path else ('\n\n' if name == 'NC302M' else '')
        environment = dict(REPORT=name + '.log', COB_SWITCH_1='ON', COB_SWITCH_2='OFF',
                           COB_DISABLE_WARNINGS='Y', COB_SET_DEBUG='N')
        if module == 'RW': environment['DD_XXXXX049'] = name + '.rep'
        records.append(dict(task_id=name, module=module, source=source,
                            source_path=decision['source_path'], copybooks=copies, subprograms=subs,
                            stdin=stdin, stdin_path=stdin_path.relative_to(reference).as_posix() if stdin_path else None,
                            data_files={}, data_files_justification='Standalone .CBL run: report.pl removes XXXXX* before execution; suite files are created by the program. DAT/inp is stdin, not a persistent fixture.',
                            env=environment, cobc_flags=['-std=cobol85', '--debug'] + ([flags[name]] if name in flags else []) + (['-I ../copy'] if module == 'SM' else []),
                            target=report))
    # These are continuation drivers, deliberately absent from the supplied
    # standalone-program index: report.pl preserves the previous program's files.
    for path in sorted(reference.glob('*/*.SUB')):
        decisions.append(dict(program=path.stem, module=path.parent.name,
                              source_path=path.relative_to(reference).as_posix(), eligible=False,
                              reasons=['continuation_outside_indexed_population'],
                              justification='.SUB runs inherit predecessor files (report.pl only removes XXXXX* for .CBL); no standalone reference inputs supplied.'))
    counts = {m: sum(r['module'] == m for r in records) for m in MODULES}
    eligibility = dict(population='Mutated standalone .CBL programs' if mutations else 'Original standalone .CBL programs',
                       indexed_programs=len(index['programs']), eligible=len(records), by_module=counts,
                       programs=sorted(decisions, key=lambda d: (d['module'], d['program'])))
    output.mkdir(parents=True, exist_ok=True)
    raw = ''.join(json.dumps(r, ensure_ascii=True, sort_keys=True) + '\n' for r in records).encode()
    artifact = gzip.compress(raw, mtime=0)
    (output / 'problems.jsonl.gz').write_bytes(artifact)
    (output / 'eligibility.json').write_text(json.dumps(eligibility, indent=2) + '\n')
    manifest = dict(schema_version=2, protocol_version=2, eval_version='1.0.0',
                    source='https://github.com/Zaneham/nist-cobol85-test-suite', source_file='newcob.val',
                    suite_version='4.2 (expanded program identification columns)',
                    compiler=read(reference / 'cobc-version.txt').strip(), generated='2026-09-20',
                    artifact_sha256=hashlib.sha256(artifact).hexdigest(),
                    eligibility_sha256=hashlib.sha256((output / 'eligibility.json').read_bytes()).hexdigest(),
                    count=len(records), by_module=counts, task_ids=[r['task_id'] for r in records],
                    reference_sha256=input_hashes)
    (output / 'manifest.json').write_text(json.dumps(manifest, indent=2, sort_keys=True) + '\n')
    return records, eligibility, manifest


def validate_mutated(reference, mutations):
    """Classify executed candidates; malformed/stale inputs remain hard errors.

    Newly generated sources may await logs outside the shipped population.
    Losing a previously validated eligible log is still an infrastructure error.
    Execution exclusions are re-evaluated on every build, never made permanent.
    """
    from scripts.mutation_evidence import mutation_evidence
    problems = []
    for name, entry in mutations['programs'].items():
        path = reference / entry['source_path']
        if not path.is_file() or hashlib.sha256(path.read_bytes()).hexdigest() != entry['mutated_sha256']:
            problems.append(f'{name}: mutated source checksum mismatch')
            continue
        candidate = bool(entry['mutations']) or entry['eligible']
        if not candidate:
            continue
        if len(entry['mutations']) < 3:
            problems.append(f'{name}: fewer than 3 mutations')
            continue
        if not path.with_suffix('.log').is_file():
            if entry.get('needs_new_logs'):
                entry.update(eligible=False, reasons=['awaiting mutated logs'])
            else:
                problems.append(f'{name}: missing mutated log')
            continue
        norm = normalize_report(read(path.with_suffix('.log')))
        if not any(r[0] == 'success' for r in norm):
            problems.append(f'{name}: missing success summary')
            continue
        evidence = mutation_evidence(read(path), entry['mutations'], norm)
        reasons = []
        if not evidence['fail_rows']:
            reasons.append('mutation did not bite')
        else:
            if evidence['unplanted']:
                reasons.append('FAIL rows outside mutated sites')
            if evidence['incorrect_evidence']:
                reasons.append('FAIL rows lack matching mutated COMPUTED/CORRECT evidence')
            if evidence['missing_sites']:
                reasons.append('planted sites without matching FAIL rows')
        entry.update(eligible=not reasons, reasons=reasons, validation=evidence,
                     mutation_candidate=True, needs_new_logs=False)
    if problems:
        raise ValueError('Mutated reference not ready; run reference/run_nist.sh on reference-mutated/ '
                         'and supply generated logs. ' + str(len(problems)) + ' program(s) invalid: '
                         + '; '.join(problems[:8]))


def build(reference: Path, output: Path):
    salt_sha256()  # Refuse even before reading files when the operator secret is absent.
    mutation_manifest = private_manifest_path()
    if not mutation_manifest.is_file():
        raise ValueError('Private mutation manifest missing; run scripts/mutate_suite.py first')
    mutations = json.loads(mutation_manifest.read_text())
    check_salt(mutations)
    index = json.loads((reference / 'index.json').read_text())
    if set(index['programs']) != set(mutations['programs']):
        raise ValueError('Mutation inventory does not match reference index')
    validate_mutated(reference, mutations)
    serialized = json.dumps(mutations, indent=2, sort_keys=True) + '\n'
    if mutation_manifest.read_text() != serialized:
        write_private(mutation_manifest, mutations)
    records, eligibility, manifest = _build(reference, output, mutations)
    manifest['pending_programs'] = sorted(n for n, p in mutations['programs'].items() if p.get('needs_new_logs'))
    pending = manifest['pending_programs']
    manifest['status'] = 'awaiting_mutated_logs' if pending and not records else 'ready'
    eligibility['mutation_summary'] = dict(
        candidates=sum(p.get('mutation_candidate', False) for p in mutations['programs'].values()),
        planted_sites=sum(len(p['mutations']) for p in mutations['programs'].values()),
        shipped_sites=sum(len(p['mutations']) for p in mutations['programs'].values() if p['eligible']),
        original_exclusions=sum(not p['baseline']['eligible'] for p in mutations['programs'].values()),
        insufficient_sites=sum(p['baseline']['eligible'] and not p.get('mutation_candidate', False) for p in mutations['programs'].values()),
        execution_exclusions=sum(p.get('mutation_candidate', False) and not p['eligible'] and not p.get('needs_new_logs', False) for p in mutations['programs'].values()),
        pending=len(pending))
    (output / 'eligibility.json').write_text(json.dumps(eligibility, indent=2) + '\n')
    manifest['eligibility_sha256'] = hashlib.sha256((output / 'eligibility.json').read_bytes()).hexdigest()
    if pending:
        print('Programs awaiting mutated logs (' + str(len(pending)) + '): ' + ', '.join(pending))
    manifest['mutation_sha256'] = hashlib.sha256(mutation_manifest.read_bytes()).hexdigest()
    (output / 'manifest.json').write_text(json.dumps(manifest, indent=2, sort_keys=True) + '\n')
    if output.resolve() == (ROOT / 'nist_cobol85/data').resolve():
        from scripts.readme_counts import update_readme
        update_readme(ROOT / 'README.md', eligibility)
        catalog_path = ROOT / 'anyeval.json'
        catalog = json.loads(catalog_path.read_text())
        catalog['tasks'][0]['samples'] = catalog['total_samples'] = len(records)
        catalog['dataset_status'] = manifest['status']
        catalog['upstream']['reference'] = 'reference-mutated/; validated mutated GnuCOBOL logs'
        catalog_path.write_text(json.dumps(catalog, indent=2) + '\n')
    return records, eligibility, manifest


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--reference', type=Path, default=ROOT / 'reference-mutated')
    parser.add_argument('--output', type=Path, default=ROOT / 'nist_cobol85/data')
    args = parser.parse_args()
    try:
        records, eligibility, manifest = build(args.reference, args.output)
    except ValueError as error:
        parser.exit(1, str(error) + '\n')
    print(f'Eligible programs: {len(records)}')
    print(' '.join(f'{m}={n}' for m, n in manifest['by_module'].items()))
