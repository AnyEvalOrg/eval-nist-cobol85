#!/bin/bash
# Compile an expanded (normally mutated) suite in the reference-only COBOL image.
set -euo pipefail
# An already expanded tree is required. Never re-expand over mutations.
TREE_ROOT="${1:-/workspace/reference-mutated}"
cd "$TREE_ROOT"
cobc --version | head -1 > cobc-version.txt
for M in NC SM IC SQ RL IX ST SG OB IF RW DB; do
  echo "module $M"
  # Prevent an unsuccessful recompile from leaving an earlier target in place.
  rm -f -- "$M"/*.log
  # report.pl intentionally returns nonzero for genuine FAIL results. Preserve
  # its file lifecycle, compiler flags, library handling and report semantics.
  ( cd "$M" && COB_HAS_ISAM=yes perl ../report.pl || true )
done
python3 - <<'PY'
import glob, json, os, re
out = {"cobc": open("cobc-version.txt").read().strip(), "programs": {}}
for mod in "NC SM IC SQ RL IX ST SG OB IF RW DB".split():
    report = {}
    if os.path.exists(f"{mod}/report.txt"):
        for line in open(f"{mod}/report.txt"):
            m = re.match(r"(\S+)\.CBL\s+(.*)", line)
            if m: report[m.group(1)] = m.group(2).strip()
    for src in sorted(glob.glob(f"{mod}/*.CBL")):
        name = os.path.basename(src)[:-4]
        rec = {"module": mod, "report_line": report.get(name)}
        for ext, key in ((".log", "report"), (".out", "stdout"), (".DAT", "data"), (".inp", "stdin"), (".rep", "rw_report")):
            p = f"{mod}/{name}{ext}"
            if os.path.exists(p): rec[key + "_bytes"] = os.path.getsize(p)
        out["programs"][name] = rec
json.dump(out, open("index.json", "w"), indent=1)
print(len(out["programs"]), "programs indexed")
PY
tar czf nist-reference.tgz cobc-version.txt index.json EXEC85.conf.in NC SM IC SQ RL IX ST SG OB IF RW DB copy copyalt 2>/dev/null || tar czf nist-reference.tgz cobc-version.txt index.json EXEC85.conf.in NC SM IC SQ RL IX ST SG OB IF RW DB copy
ls -la nist-reference.tgz
