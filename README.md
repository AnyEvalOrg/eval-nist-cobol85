# NIST COBOL85 → Python

An AnyEval-original conversion evaluation: faithfully translate one NIST CCVS85
COBOL program to Python 3 and reproduce its self-checking printer REPORT.
Distribution `eval-nist-cobol85`, module `nist_cobol85`, version `1.0.0`.
The sole Inspect task is `nist_cobol85/nist_cobol85_python`; its deterministic
binary metric is pass@1 (one generation, one epoch, no model judge).

## Frozen population and eligibility

<!-- population:begin -->
The indexed population contains 381 standalone `.CBL` programs.
The shipped dataset contains **97** programs validated against GnuCOBOL logs.
Exclusions are **58 original + 215 insufficient-site + 11 execution-evidence**;
**0** candidates await fresh operator logs.

| Module | Shipped eligible programs |
|---|---:|
| NC | 49 |
| SM | 4 |
| IC | 9 |
| SQ | 1 |
| RL | 1 |
| IX | 3 |
| ST | 3 |
| SG | 2 |
| OB | 0 |
| IF | 22 |
| RW | 3 |
| DB | 0 |
| **Total** | **97** |

There are 108 mutation candidates with 364 planted sites;
331 sites belong to the shipped population.

<!-- population:end -->

`scripts/mutate_suite.py` derives baseline eligibility from the frozen original
reports and `report.pl` special-case sets. It excludes compilation-only, no-output,
interactive-kill, DB debugging, special-grader, and no-PASS/FAIL programs. Inspection
counts require the existing source audits (NC114M and SQ201M), followed by fresh mutation execution evidence.

Each candidate source in `reference-mutated/<MODULE>/<PROG>.CBL` uses
HMAC-SHA256(NIST_MUTATION_SALT, program name) as its random seed. The script
changes K = max(3, nearest integer to 10% of supported sites). It changes a numeric
digit or an alphanumeric character in both the IF expectation and its matching
MOVE to CORRECT. Replacements preserve byte width and fixed-format columns.
COMPUTED receives the actual data item without modification. A faithful conversion
must therefore reproduce the resulting FAIL rows and their evidence values.

Supported forms include inline ELSE, jumps to nearby FAIL paragraphs, and
fall-through failure blocks after a conditional PASS/GO TO WRITE. A narrow new
form accepts IF NOT = / NOT EQUAL TO followed by GO TO a local FAIL block,
then unconditional PASS/GO TO WRITE. The FAIL block permits only paired evidence
MOVEs, diagnostic MOVEs, and PERFORM FAIL. It cannot alter the tested data or
perform user code. This adds NC132A, NC239A, and RW101A (three sites each).
Programs with at least three legacy sites use that matcher; the extension applies
below that threshold. All selections use the operator secret. Matching requires
a test/check paragraph (or the strictly checked new jump form), an unambiguous
matching literal, a MOVE of the tested data
item to COMPUTED, both PASS and FAIL, and PRINT-DETAIL. N/A/X and the extended
numeric 18V0/0V18/4V14/14V4 fields are recognized. Continued literals, compound
predicates, indirect expectations, unmatched values and ambiguous blocks are
conservatively excluded. Symbolic ordering and NOT EQUAL predicates are recognized;
reference execution must establish that every selected mutation actually bites.
Range checks such as IF101A use indirect MIN-RANGE/MAX-RANGE and custom
CORRECT-MIN/MAX reporting. Shared PERFORM checks, compound conditions, and
unmatched post-IF MOVEs remain unsupported; they require more control/data-flow
analysis than this conservative matcher provides.

The private manifest lives only at `$NIST_PRIVATE_DIR/mutations.json`, outside the
repository. The operator holds `NIST_MUTATION_SALT` in Secret Manager
`nist-cobol85-mutation-salt` and injects it into the process environment. The salt
comes **only** from that environment variable; mutation and dataset builds refuse
a missing or empty value. Neither the salt nor derived seeds are written anywhere.
The private manifest records site locations and original/mutated literals, comment
edits, source checksums and validation decisions, plus SHA-256 of the salt so rebuilds
reject a different secret. `NIST_PRIVATE_DIR` is required and must resolve outside
the repository. The manifest is excluded from wheels, source distributions, package
data, prompts and candidate sandboxes; ignore rules also guard accidental copies.

Within each selected test block and its immediately preceding comments, literal
occurrences in comments are rewritten. Remaining comment lines are conservatively
blanked because prose may disclose an expectation without spelling its literal.
Blanking preserves line numbers and fixed-format columns; every edit is privately
audited. The original reference tree remains provenance only. The mutator copies
`.DAT`/`.inp`, `.SUB`, `lib/`, `copy/` and `copyalt/` dependencies without old logs.

The tree includes **44 `.SUB` continuation drivers**, absent from index.json.
They inherit predecessor files: report.pl removes `XXXXX*` only before `.CBL`
execution. They remain outside the standalone sample population; an inventory test
asserts the count. Library subprograms are dependencies, not samples.

## Prompt and execution protocol

The system message requires a faithful conversion and exactly one fenced `python`
block. The user receives the entire mutated expanded COBOL source, recursively resolved
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
candidate sandbox. The prompt explicitly says expected constants were altered and requires the
program AS GIVEN, including failing tests. It does not reveal the mutation manifest,
site locations, or original expectations.
The required output includes genuine failed-check values from mutated assertions.

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

* Result rows retain `(feature.strip(), verdict, paragraph_name.strip())`, including
  rows with an empty paragraph name. FAIL rows additionally retain ordered
  COMPUTED/CORRECT evidence fields.
  Only PASS, FAIL (also printed `FAIL*`) and DELETE in the verdict column qualify.
  Multi-word features and spaces inside paragraph suffixes remain significant.
* Numeric summaries preserve successful/total counts and FAILED, DELETED and
  REQUIRE INSPECTION counts; NO becomes zero and leading zeros are removed.
* Evidence labels occupy columns 31–47 and values columns 48–117. Numeric/A
  fields occupy the first 20 value columns; X can extend to 70. Leading and internal
  spaces are significant, trailing padding is removed. Any deterministic reference
  annotation in this field is retained. Missing, changed or reordered evidence fails.
* All other lines, headings, footers, page decoration, blanks, dates/names and
  REMARKS are ignored. CRLF, CR and form-feed page boundaries are accepted.

The standard zero-based fields are feature `[1:21]`, verdict starting 22 and
paragraph `[28:50]`; wide SQ fields are `[1:25]`, 26, `[32:49]`; paragraph-first SQ
fields are `[19:43]`, 44, `[1:18]`. Recognized full column headings select the layout
but never become result rows; absent headings use the standard layout. Remarks
start later and are never part of the paragraph. The second heading line's
TESTED/FAIL labels are explicitly recognized and ignored; empty paragraph names
on real result rows are preserved.

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
`us-central1-docker.pkg.dev/openevalz-sbx-84737/openevalz/eval-livecodebench-sandbox:1.0.0`.
The package Dockerfile is copied exactly from eval-livecodebench: Python 3.12 slim
plus procps/util-linux/hostname, with UID/GID 65532 reserved for candidates. Trusted
supervision runs as root and drops candidates to that identity. GnuCOBOL and Java
are absent from this recipe, preventing delegation to cobc. GnuCOBOL remains only
in `reference/cloudbuild.yaml`'s reference-generation image. No image pull, rebuild,
or live-image inspection was performed here. `anyeval_chart=False` selects the
provider chart exception; Docker uses the Python-only recipe with networking disabled.

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
`reference/run_nist.sh TREE_ROOT` compiles an already expanded tree with unchanged
`report.pl` semantics; it never re-expands over mutated sources. The Cloud Build
configuration runs it on `/workspace/reference-mutated` and uploads the archive.
Run Cloud Build from the repository root. Extract its logs back into the same
module directories under `reference-mutated/`.

```sh
# Inject NIST_MUTATION_SALT from Secret Manager without echoing or saving it.
# Set NIST_PRIVATE_DIR to an operator-only directory outside this checkout.
python scripts/mutate_suite.py
# Operator: requires the reference-generation Cloud Build environment.
gcloud builds submit --config=reference/cloudbuild.yaml .
# Operator: extract generated module logs into reference-mutated/.
python scripts/build_dataset.py
python -m pytest -q -p no:cacheprovider tests
python scripts/prove_supervisor.py
python -m pip wheel --no-deps --no-build-isolation -w .build/dist .
python -m pip install --no-deps --target .build/wheel-env/site-packages .build/dist/eval_nist_cobol85-1.0.0-py3-none-any.whl
python scripts/verify_wheel.py .build/wheel-env/site-packages
python run.py --task nist_cobol85_python --sample-id NC101A --model provider/model
```

The builder defaults to `reference-mutated/`, verifies source hashes and the complete
mutation inventory, and refuses missing previously validated logs or missing success
summaries. Zero FAIL rows now mean ineligible with reason `mutation did not bite`.
Unplanted FAIL rows, incorrect/missing COMPUTED/CORRECT evidence, and planted sites
without matching FAIL rows also exclude the program. The external private `mutations.json` and public
`eligibility.json` record these decisions without exposing sites in public metadata. Runtime exclusions are rechecked on rebuild.

`scripts/mutation_evidence.py` resolves report labels from literal PAR-NAME MOVEs,
CCVS field widths and REC-CT suffixes. Explicit source audits handle IC222A's skipped
DELETE blocks and NC252A's failure-only counter updates. IX diagnostic helpers clear
PAR-NAME before some FAIL rows; the checker traces that source behavior. Numeric
CORRECT fields compare with Decimal, ignoring sign/zero padding and adjacent ANSI
annotations; alphanumeric values preserve leading/internal spaces. Each site requires
a distinct matching FAIL row, and every FAIL must match a planted site and literal.
There are no missing-row waivers in the shipped population.

Candidates without logs are excluded, and the builder reports every pending program
by name. After installing fresh operator logs, run `python scripts/build_dataset.py`
to validate and admit them. A complete regeneration removes all stale candidate logs;
if none are validated, the dataset status is `awaiting_mutated_logs` and loading it
fails with an actionable error. Tests needing real mutated logs skip with a reason
until the new Cloud Build logs arrive. Tests that require mutation metadata use only
small synthetic programs and a test salt, never the operator's private manifest.
Fault-injection tests alter synthetic evidence. A wheel test checks that private
mutation metadata cannot enter package data, including an accidentally staged file.

The README population block is rendered from `data/eligibility.json` by the builder.
A test asserts that its table and exclusion prose exactly match that data. Historical
execution exclusions must be recomputed after regeneration and fresh execution;
old decisions cannot validate newly selected sites.

Portable supervisor tests execute the actual restriction/read function bodies with
simulated system calls; full process execution tests require Linux root with reserved
UID 65532 and skip on other hosts. Run those tests in a dedicated sandbox. They cover
credential resets, process/file limits, unsafe REPORT types, ownership and links.
`scripts/prove_supervisor.py` removes each protection in a temporary copy and verifies
that its corresponding tests fail, leaving working sources untouched.

Tests and wheel verification need no network, cluster, model or container engine.
Helm 3 or 4 must be on PATH for actual chart rendering/linting. Dependencies must
already be installed for offline checks. The builder itself uses only the standard
library. Use a generous model output budget and report truncation rates: sources
and faithful conversions can be long (`cost_class: high`). Package code is
Apache-2.0; suite material is public domain; provenance Perl tools retain GPL
notices. See NOTICE.md.
