# Notices

Original evaluation package code: Copyright 2026 AnyEval contributors.
Licensed under Apache License 2.0; see LICENSE. Sandbox and publication machinery
is adapted from AnyEval's eval-livecodebench and eval-cobol-javatrans packages.

NIST CCVS85 COBOL compiler validation suite, newcob.val, including the expanded
COBOL programs, COPY members, input data and generated reference reports, is
public-domain United States government material. Source:
https://github.com/Zaneham/nist-cobol85-test-suite/blob/master/newcob.val
The source mirror's README calls the population version 4.0; the supplied expanded
programs and reports identify CCVS85 4.2. This package freezes those supplied 4.2
artifacts and does not claim a separately verified upstream revision.

reference/report.pl and reference/expand.pl retain their Free Software Foundation
copyright and GNU GPL v3-or-later notices. They are GnuCOBOL provenance tools, not
Apache-licensed package code or public-domain suite material. They are retained
in the repository/source distribution and are not shipped in the wheel.
The GPL is available at https://www.gnu.org/licenses/gpl-3.0.html.
GnuCOBOL and other container components retain their respective licenses.

Reference artifacts were generated on 2026-09-20 with GnuCOBOL 3.2.0 through its
EXEC85 extraction, expand.pl and report.pl pipeline. See reference/run_nist.sh,
reference/cloudbuild.yaml, reference/cobc-version.txt and data/manifest.json.
