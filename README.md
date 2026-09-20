# NIST COBOL85 → Python

An AnyEval-original conversion evaluation: faithfully translate one NIST CCVS85
COBOL program to Python 3 and reproduce its self-checking printer REPORT.
Distribution `eval-nist-cobol85`, module `nist_cobol85`, version `1.0.0`.
The sole Inspect task is `nist_cobol85/nist_cobol85_python`; its deterministic
binary metric is pass@1 (one generation, one epoch, no model judge).

## Frozen population and eligibility

323 samples come from the standalone `.CBL` population in `reference/index.json`.
Sample ids are the original program names, e.g. `NC101A`. The builder derives all
inclusions and exclusions from the supplied reference tree; it prints exact counts
and records reasons in `nist_cobol85/data/eligibility.json`.

| Module | Indexed programs | Eligible | Excluded |
|---|---:|---:|---:|
| NC | 95 | 85 | 10 |
| SM | 13 | 10 | 3 |
| IC | 25 | 24 | 1 |
| SQ | 84 | 76 | 8 |
| RL | 26 | 23 | 3 |
| IX | 29 | 26 | 3 |
| ST | 25 | 20 | 5 |
| SG | 13 | 10 | 3 |
| OB | 5 | 3 | 2 |
| IF | 45 | 42 | 3 |
| RW | 6 | 4 | 2 |
| DB | 15 | 0 | 15 |
| **Total** | **381** | **323** | **58** |

A program must have a reference `.log` containing an actual PASS/FAIL result row
and a success summary. The builder excludes `comp_only`, `no_output`, interactive
kill programs (OBNC1M), all DB programs (compiler-specific debugging), and the
special graders NC107A, NC113M, NC121M, NC220M and NC135A. It reads the named sets
and compilation flags from `reference/report.pl`, not an inferred pass threshold.
Reference FAIL results are legitimate targets; the objective is matching the
frozen GnuCOBOL behavior, not manufacturing an all-PASS report.

Inspection counts do not automatically exclude a program. NC114M (one inspection)
and SQ201M (11 inspections) are retained: source audits show fixed listing examples
and printer-layout exercises whose REPORT output and counters do not depend on a
human response. These are source-based determinism justifications, not claims that
repeated executions were performed here. Inspection-only programs with no actual
PASS/FAIL rows fail the primary rule. Full reasons are stored per program.

The tree also includes 43 `.SUB` continuation drivers, absent from index.json.
They inherit data files from preceding runs: report.pl removes `XXXXX*` only before
`.CBL` execution. They are separately inventoried as outside the indexed standalone
population, not silently treated as independent samples with empty input files.
Library subprograms are dependencies, not samples.

## Prompt and execution protocol

The system message requires a faithful conversion and exactly one fenced `python`
block. The user receives the entire expanded COBOL source, recursively resolved
COPY texts (including `copyalt/` qualification), transitively referenced `lib/`
subprogram sources, stdin as an exact JSON string, environment and compiler
conventions. COPY can occur inside declarations and statements; the builder
handles fixed-format literal continuations. Dynamic CALL names are resolved from
library-name literals in CALL-bearing source units, then closed transitively.
Nested programs already present in the main source remain there.

A private dataset record contains the reference REPORT as `target`. Explicit
prompt field allowlists prevent this field from reaching `Sample.input`. The
scorer loads targets into its private closure; Sample.target is deliberately empty
and sample metadata contains only id/module. No expected REPORT is copied into the
candidate sandbox. Sources inherently contain self-checking assertions; this is
an output-equivalence conversion benchmark, not a hidden-test generalization test.

Execution uses shell-free argv `/usr/local/bin/python3 -I main.py` as reserved
UID/GID 65532 in a fresh scratch directory, with a 60-second deadline. stdin is the
recorded `.inp` or `.DAT` bytes (Latin-1 is used as reversible JSON transport), or
empty. REPORT is `<PROG>.log`; COB_SWITCH_1=ON and COB_SWITCH_2=OFF. GnuCOBOL's
COB_DISABLE_WARNINGS=Y and COB_SET_DEBUG=N are recorded too. RW adds
DD_XXXXX049=`<PROG>.rep`. The latter output is not scored. Programs create their own
suite files; the standalone indexed population needs no persistent data fixtures.
The record schema supports explicit initial `data_files` when needed.

Each captured stdout/stderr stream and the REPORT file is bounded at 1 MiB; reaching
the cap fails closed, including possibly truncated output. stdout is captured but
cannot substitute for REPORT. Missing/unsafe REPORT, runtime error, timeout, output
overflow, missing/ambiguous fenced code or an unauthenticated receipt is INCORRECT.
Infrastructure/cleanup failures raise sanitized errors rather than report success.

## What an equivalent REPORT means

`nist_cobol85/normalization.py` contains the **one shared normalization function**
used for eligibility and both sides of scoring. Correctness requires equality of
the entire ordered normalized sequences, including duplicates:

* Result rows reduce to `(feature.strip(), verdict, paragraph_name.strip())`.
  Only PASS, FAIL (also printed `FAIL*`) and DELETE in the verdict column qualify.
  Multi-word features and spaces inside paragraph suffixes remain significant.
* Numeric summaries preserve successful/total counts and FAILED, DELETED and
  REQUIRE INSPECTION counts; NO becomes zero and leading zeros are removed.
* All other lines, headings, footers, page decoration, blanks, dates/names and
  REMARKS are ignored. CRLF, CR and form-feed page boundaries are accepted.

The standard zero-based fields are feature `[1:21]`, verdict starting 22 and
paragraph `[28:50]`; wide SQ fields are `[1:25]`, 26, `[32:49]`; paragraph-first SQ
fields are `[19:43]`, 44, `[1:18]`. Recognized full column headings select the layout
but never become result rows; absent headings use the standard layout. Remarks
start later and are never part of the paragraph. The second heading line's
TESTED/FAIL labels do not have a paragraph and are ignored.

CCVS also prints `*****` deletion decorations and INSPT rows. These are not the
specified PASS/FAIL/DELETE tokens, so they are ignored as rows; their counts remain
in the summaries. Visual output and RW `.rep` files are not judged. A model that
reproduces the required report can pass even if its implementation takes shortcuts;
this metric cannot independently prove semantic equivalence for unseen inputs.

Score explanations expose only status and `rows matched / expected`. Matching rows
means equal tuples at the same result-row position; summaries must also match for
CORRECT. Summary totals need not equal row counts: some suite programs aggregate
many checks into one row, and FAIL rows can repeat.

## Sandbox, publication and packaging

The trusted root supervisor writes and unlinks its request before launching the
candidate, drops credentials and privilege gains, applies process/file limits,
captures output, verifies REPORT is a regular non-symlink file owned by the candidate,
and authenticates a receipt with a random memory-only HMAC key. Independent UID
sweeps enforce cleanup even if the supervisor is interrupted. Candidate stdout
cannot forge a passing receipt. No candidate code is executed on the host.

The default packaged Kubernetes chart uses gVisor, one pod, no service-account token,
and a release-scoped standard NetworkPolicy denying ingress and egress. It uses
`us-central1-docker.pkg.dev/openevalz-sbx-84737/openevalz/eval-cobol-sandbox:1.0.0`.
The chart, values and Dockerfile are adapted/copied from eval-cobol-javatrans.
`anyeval_chart=False` explicitly selects the provider chart exception; Docker uses
the copied local Dockerfile with networking disabled. **Image recipe discrepancy:**
the supplied sibling Dockerfile installs distribution GnuCOBOL and OpenJDK 17 on
Python 3.12 slim Bookworm, while the supplied reference/image description says
GnuCOBOL 3.2.0 and OpenJDK 21. It was copied unchanged as requested. The checked-in
reference compiler receipt says 3.2.0; this task runs only Python and does not compile
COBOL or Java at scoring time. No image rebuild or live-image inspection was done.

`publication.py` suppresses sandbox transcript events and provider diagnostic logs
within private grading, including exception paths. This is tested against pinned
Inspect APIs; redaction.yaml adds an exporter policy. The standalone run.py emits
a target-free bundle and leaves live serving receipts/provenance null. AnyEval's
application integration must supply those receipts and pin the image digest.
The wheel contains Python code, runtime configuration, and packaged `data/` only;
the reference provenance tree stays in the repository/source distribution.

## Reference provenance and reproduction

The exact suite source is [newcob.val from Zaneham/nist-cobol85-test-suite](https://github.com/Zaneham/nist-cobol85-test-suite/blob/master/newcob.val),
a public-domain NIST CCVS85 population. The mirror README labels it 4.0; supplied
expanded programs identify 4.2. `reference/` freezes the supplied 2026-09-20
GnuCOBOL 3.2.0 results, generated using GnuCOBOL's EXEC85 → expand.pl → report.pl
pipeline inside the shared image. No upstream commit or original population-file
hash was supplied; the manifest records SHA-256 hashes of local source, report,
input and pipeline artifacts rather than inventing an upstream revision.
`reference/run_nist.sh` and `reference/cloudbuild.yaml` reproduce collection when
newcob.val and the helper files are staged in `/workspace` as their script requires.
No reference regeneration was performed during package creation.

```sh
python scripts/build_dataset.py
python -m pip install '.[anyeval,test]'
python -m pytest -q
python -m pip wheel --no-deps --no-build-isolation -w .build/dist .
python -m pip install --no-deps --target .build/wheel-env/site-packages .build/dist/eval_nist_cobol85-1.0.0-py3-none-any.whl
python scripts/verify_wheel.py .build/wheel-env/site-packages
python run.py --task nist_cobol85_python --sample-id NC101A --model provider/model
```

Tests and wheel verification need no network, cluster, model or container engine.
Helm 3 or 4 must be on PATH for actual chart rendering/linting. Dependencies must
already be installed for offline checks. The builder itself uses only the standard
library. Use a generous model output budget and report truncation rates: sources
and faithful conversions can be long (`cost_class: high`). Package code is
Apache-2.0; suite material is public domain; provenance Perl tools retain GPL
notices. See NOTICE.md.
