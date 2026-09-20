"""Render the README population section from public eligibility metadata."""
from pathlib import Path

BEGIN = '<!-- population:begin -->'
END = '<!-- population:end -->'
EXECUTION_REASONS = {'mutation did not bite', 'FAIL rows outside mutated sites',
                     'FAIL rows lack matching mutated COMPUTED/CORRECT evidence',
                     'planted sites without matching FAIL rows'}


def population_text(info):
    indexed = [p for p in info['programs'] if p['source_path'].endswith('.CBL')]
    insufficient = sum('fewer than 6 supported sites' in p['reasons'] for p in indexed)
    pending = sum('awaiting mutated logs' in p['reasons'] for p in indexed)
    execution = sum(bool(EXECUTION_REASONS.intersection(p['reasons'])) for p in indexed)
    original = info['indexed_programs'] - info['eligible'] - insufficient - pending - execution
    summary = info.get('mutation_summary', {})
    lines = [BEGIN,
             f"The indexed population contains {info['indexed_programs']} standalone `.CBL` programs.",
             f"The shipped dataset contains **{info['eligible']}** programs validated against GnuCOBOL logs.",
             f"Exclusions are **{original} original + {insufficient} insufficient-site + {execution} execution-evidence**;",
             f"**{pending}** candidates await fresh operator logs.", '',
             '| Module | Shipped eligible programs |', '|---|---:|']
    lines += [f'| {module} | {count} |' for module, count in info['by_module'].items()]
    lines += [f"| **Total** | **{info['eligible']}** |", '']
    if summary:
        lines += [f"There are {summary['candidates']} mutation candidates with {summary['planted_sites']} planted sites;",
                  f"{summary['shipped_sites']} sites belong to the shipped population.", '']
    if pending:
        lines += ['All pending programs are listed in `data/manifest.json` under `pending_programs`.',
                  'Their stale `.log`/`.out` files have been removed; Cloud Build must execute',
                  'the regenerated sources before the builder can admit them.', '']
    lines.append(END)
    return '\n'.join(lines)


def update_readme(path: Path, info):
    text = path.read_text()
    start, end = text.index(BEGIN), text.index(END) + len(END)
    path.write_text(text[:start] + population_text(info) + text[end:])
