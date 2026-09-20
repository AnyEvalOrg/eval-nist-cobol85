"""Bundle provenance follows the dataset loaded for this run."""
from types import SimpleNamespace

import pytest

from nist_cobol85 import dataset
from run import emit_bundle


@pytest.mark.parametrize('use_packaged_manifest', [True, False])
def test_bundle_provenance_comes_from_loaded_manifest(tmp_path, monkeypatch, use_packaged_manifest):
    if not use_packaged_manifest:
        monkeypatch.setattr(dataset, 'manifest', lambda: dict(
            artifact_sha256='a' * 64, source='synthetic-source', source_file='suite.val'))
    info = dataset.manifest()
    args = SimpleNamespace(sample_id='SYNTH', task='nist_cobol85_python',
                           model='provider/model', token_limit=100, sandbox_type='k8s')
    log = SimpleNamespace(status='success', samples=[SimpleNamespace(id='SYNTH', scores={})])
    bundle = emit_bundle(log, args, tmp_path/'bundle.json')
    assert bundle['dataset']['revision'] == info['artifact_sha256']
    assert bundle['dataset']['source'] == info['source']
    assert bundle['dataset']['source_file'] == info['source_file']
