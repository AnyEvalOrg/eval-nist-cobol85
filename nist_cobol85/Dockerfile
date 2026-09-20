FROM python:3.12-slim
RUN apt-get update \
    && apt-get install -y --no-install-recommends procps util-linux hostname \
    && rm -rf /var/lib/apt/lists/* \
    && groupadd --gid 65532 lcb-candidate \
    && useradd --uid 65532 --gid 65532 --no-create-home --shell /usr/sbin/nologin lcb-candidate
# Only trusted setup/supervision/cleanup run as root. RUNNER drops the candidate.
USER 0:0
# Check provenance tools as the configured container user. Reading the gVisor
# boot log itself must be checked at runtime inside the sandbox, not at build time.
RUN command -v dmesg && dmesg --version && command -v hostname && hostname
