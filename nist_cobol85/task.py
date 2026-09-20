"""One generation, one epoch; deterministic REPORT equivalence (pass@1)."""
import os
from importlib.resources import files
from pathlib import Path
from inspect_ai import Task, task
from inspect_ai.dataset import MemoryDataset, Sample
from inspect_ai.solver import generate, system_message
from .dataset import load_records, manifest
from .prompts import SYSTEM_MESSAGE, user_prompt
from .scoring import report_scorer


def record_to_sample(record):
    # Target is retrieved privately by scorer closure, not serialized in logs.
    return Sample(id=record['task_id'], input=user_prompt(record),
                  metadata={'task_id': record['task_id'], 'module': record['module']})


def load_dataset():
    return MemoryDataset(name='NIST-COBOL85-Python', samples=[record_to_sample(r) for r in load_records()])


@task
def nist_cobol85_python(sandbox_type: str = 'k8s', anyeval_chart: bool = True) -> Task:
    """Translate one standalone CCVS85 COBOL program to Python 3."""
    if sandbox_type not in {'k8s', 'docker'}:
        raise ValueError('sandbox_type must be k8s or docker')
    resources = files('nist_cobol85')
    config = str(resources.joinpath('values.yaml' if sandbox_type == 'k8s' else 'compose.yaml'))
    if sandbox_type == 'k8s' and anyeval_chart:
        from k8s_sandbox import K8sSandboxEnvironmentConfig
        os.environ.setdefault('INSPECT_K8S_DEFAULT_NAMESPACE', 'anyeval-sandbox')
        config = K8sSandboxEnvironmentConfig(chart=str(resources.joinpath('chart')), values=Path(config))
    info = manifest()
    return Task(dataset=load_dataset(), solver=[system_message(SYSTEM_MESSAGE), generate()],
                scorer=report_scorer(), sandbox=(sandbox_type, config), epochs=1, version='1.0.0',
                metadata={'metric': 'pass@1', 'dataset_provenance': {k: info[k] for k in
                          ('source', 'source_file', 'compiler', 'count', 'artifact_sha256', 'protocol_version')}})
