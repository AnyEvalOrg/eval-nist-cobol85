#!/bin/bash
# Reproduce GnuCOBOL's tests/cobol85 pipeline inside the eval-cobol-sandbox image and
# collect, per program: expanded source, copybooks, data, REPORT log, stdout, status.
set -euo pipefail
cd /workspace
export NEWCOB_VAL=/workspace/newcob.val
sed -e '/^\*END/,$d' -e '1,/^\*HEADER/d' \
    -e 's/^002500.*/           SELECT           POPULATION-FILE/' \
    -e 's/^002700.*/           "NEWCOB_VAL" ORGANIZATION LINE SEQUENTIAL./' \
    -e 's/^003000.*/           "newcob.tmp" ORGANIZATION LINE SEQUENTIAL./' \
    -e 's/^003100.*//' \
    -e 's/^003400.*/           "unused"./' \
    -e 's/^003700.*/           "newcob.log"./' \
    -e 's/^004000.*/           "EXEC85.conf" ORGANIZATION LINE SEQUENTIAL./' \
    newcob.val > EXEC85.cob
cobc -std=cobol85 -debug -x EXEC85.cob
cobc --version | head -1 > cobc-version.txt
for M in NC SM IC SQ RL IX ST SG OB IF RW DB; do
  echo "=== module $M"
  mkdir -p $M
  { echo "*SELECT-MODULE $M"; cat EXEC85.conf.in; } > $M/EXEC85.conf
  ( cd $M && COB_UNIX_LF=Y ../EXEC85 )
  perl expand.pl $M/newcob.tmp $M
  ( cd $M && COB_HAS_ISAM=yes perl ../report.pl || true )
  cp report.txt.$M.bak /dev/null 2>/dev/null || true
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
