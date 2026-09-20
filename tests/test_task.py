from pathlib import Path
import json
import shutil
import subprocess
import pytest
import yaml
from nist_cobol85 import nist_cobol85_python



def test_docker_task_and_catalog():
    from nist_cobol85.dataset import manifest
    if manifest().get('status') == 'awaiting_mutated_logs':
        pytest.skip('Fresh operator Cloud Build logs required for real task integration')
    task=nist_cobol85_python(sandbox_type='docker')
    from nist_cobol85.dataset import load_records
    assert len(task.dataset)==len(load_records()) > 0 and task.epochs==1
    assert task.sandbox.type=='docker'
    service=yaml.safe_load(Path(task.sandbox.config).read_text())['services']['default']
    assert service['network_mode']=='none' and service['user']=='0:0'
    assert service['image'].endswith('eval-livecodebench-sandbox:1.0.0')
    catalog=json.loads(Path('anyeval.json').read_text())
    eligibility=json.loads(Path('nist_cobol85/data/eligibility.json').read_text())
    count=eligibility['eligible']
    assert catalog['tasks']==[{'name':'nist_cobol85_python','samples':count}]
    assert catalog['execution']['cost_class']=='high'


def test_default_k8s_contract(synthetic_task_data):
    task=nist_cobol85_python()
    values=yaml.safe_load(task.sandbox.config.values.read_text())
    assert values['services']['default']['runtimeClassName']=='gvisor'
    assert values['services']['default']['image'].endswith('eval-livecodebench-sandbox:1.0.0')
    assert values['automountServiceAccountToken'] is False
    assert Path(task.sandbox.config.chart).joinpath('Chart.yaml').is_file()


def test_chart_renders_and_lints(synthetic_task_data):
    helm=shutil.which('helm')
    assert helm, 'Helm 3 or 4 must be installed to validate the chart offline.'
    config=nist_cobol85_python().sandbox.config
    for command in ([helm,'lint','--strict',str(config.chart),'-f',str(config.values)],
                    [helm,'template','nist-fixture',str(config.chart),'-n','anyeval-sandbox','-f',str(config.values)]):
        result=subprocess.run(command,capture_output=True,text=True,timeout=30)
        assert result.returncode==0,result.stderr
    resources=list(yaml.safe_load_all(result.stdout))
    assert {r['kind'] for r in resources}=={'Pod','NetworkPolicy'}
    pod=next(r for r in resources if r['kind']=='Pod')
    policy=next(r for r in resources if r['kind']=='NetworkPolicy')
    assert pod['spec']['automountServiceAccountToken'] is False
    assert pod['spec']['restartPolicy']=='Never'
    assert len(pod['spec']['containers'])==1
    security=pod['spec']['containers'][0]['securityContext']
    assert security['runAsUser']==0 and security['allowPrivilegeEscalation'] is False
    assert security['capabilities']['drop']==['ALL']
    assert set(security['capabilities']['add'])=={'SETUID','SETGID','KILL','CHOWN','DAC_OVERRIDE'}
    assert policy['spec']['egress']==policy['spec']['ingress']==[]
    assert policy['spec']['podSelector']['matchLabels']=={'app.kubernetes.io/instance':'nist-fixture'}


def test_values_match_pinned_provider_schema(synthetic_task_data):
    import k8s_sandbox
    import jsonschema
    config=nist_cobol85_python().sandbox.config
    schema=Path(k8s_sandbox.__file__).parent/'resources/helm/agent-env/values.schema.json'
    jsonschema.validate(yaml.safe_load(config.values.read_text()),json.loads(schema.read_text()))


def test_invalid_sandbox():
    with pytest.raises(ValueError): nist_cobol85_python(sandbox_type='local')


def test_python_only_image_recipe():
    recipe = Path('nist_cobol85/Dockerfile').read_text()
    assert 'FROM python:3.12-slim\n' in recipe
    assert 'procps util-linux hostname' in recipe
    assert 'gnucobol' not in recipe and 'openjdk' not in recipe
    assert '--uid 65532 --gid 65532' in recipe


@pytest.fixture
def synthetic_task_data(monkeypatch):
    import importlib
    from test_scoring import record
    for module in ('nist_cobol85.task', 'nist_cobol85.scoring'):
        monkeypatch.setattr(importlib.import_module(module), 'load_records', lambda: [record()])
