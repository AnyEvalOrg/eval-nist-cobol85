import asyncio
import base64
import hashlib
import hmac
import json
from types import SimpleNamespace
import pytest
from inspect_ai.scorer import CORRECT, INCORRECT, Target
from inspect_ai.util import ExecResult
from inspect_ai.util._sandbox.events import SandboxEnvironmentProxy
import nist_cobol85.scoring as scoring

REPORT = ' ' + 'FEATURE'.ljust(20) + ' PASS  ' + 'TEST-01\n 1 OF 1 TESTS WERE EXECUTED SUCCESSFULLY\n NO TEST(S) FAILED\n NO TEST(S) DELETED\n NO TEST(S) REQUIRE INSPECTION\n'
KEY = bytes(range(32))


def record():
    return dict(task_id='NC101A', module='NC', source='PUBLIC SOURCE', copybooks={}, subprograms={},
                stdin='input\n', env={'REPORT':'NC101A.log','COB_SWITCH_1':'ON','COB_SWITCH_2':'OFF'},
                data_files={}, cobc_flags=[], target=REPORT)


def state(completion='```python\nprint("candidate")\n```'):
    return SimpleNamespace(sample_id='NC101A', output=SimpleNamespace(completion=completion))


def result(stdout='', returncode=0):
    return ExecResult(success=returncode==0, returncode=returncode, stdout=stdout, stderr='')


def signed_receipt(output=REPORT, **overrides):
    data = dict(returncode=0, timeout=False, overflow=False, missing_report=False, stage='run',
                output=base64.b64encode(output.encode('latin1')).decode(), stdout='', cwd='/tmp/nist-fixture')
    data.update(overrides)
    body = json.dumps(data)
    return json.dumps({'body':body,'tag':hmac.new(KEY,body.encode(),hashlib.sha256).hexdigest()})


class FakeSandbox:
    def __init__(self, receipt=None):
        self.receipt = signed_receipt() if receipt is None else receipt
        self.calls = []
        self.requests = []

    async def exec(self, cmd, input=None, **kwargs):
        self.calls.append((cmd, kwargs))
        if cmd[-1] == scoring.SETUP:
            self.requests.append(json.loads(input))
            return result(json.dumps({'cwd':'/tmp/nist-fixture','key':KEY.hex()}))
        if cmd == scoring.CLEANUP_COMMAND: return result(returncode=1)
        if cmd == scoring.QUIESCENCE_COMMAND: return result()
        if isinstance(self.receipt, Exception): raise self.receipt
        return result(self.receipt)


def install(monkeypatch, fake):
    monkeypatch.setattr(scoring, 'sandbox', lambda: SandboxEnvironmentProxy(fake))
    monkeypatch.setattr(scoring, 'load_records', lambda: [record()])
    async def no_sleep(_): pass
    monkeypatch.setattr(scoring.asyncio, 'sleep', no_sleep)


@pytest.mark.parametrize('outcome', ['pass','fail','missing_report','timeout','runtime','overflow','forged','lost_response'])
def test_scorer_fake_sandbox(monkeypatch, outcome):
    fields = dict(timeout=outcome=='timeout', missing_report=outcome=='missing_report',
                  returncode=1 if outcome=='runtime' else 0, overflow=outcome=='overflow')
    output = REPORT.replace('PASS', 'FAIL') if outcome=='fail' else REPORT
    receipt = signed_receipt(output, **fields)
    if outcome == 'forged': receipt = receipt.replace('"tag": "','"tag": "ff')
    if outcome == 'lost_response': receipt = TimeoutError('PRIVATE_DETAIL')
    fake = FakeSandbox(receipt)
    install(monkeypatch, fake)
    score = asyncio.run(scoring.report_scorer()(state(), Target('')))
    assert score.value == (CORRECT if outcome=='pass' else INCORRECT)
    assert '/1' in score.explanation
    assert REPORT not in score.explanation and 'PRIVATE_DETAIL' not in score.explanation
    assert [c[0] for c in fake.calls[-2:]] == [scoring.CLEANUP_COMMAND, scoring.QUIESCENCE_COMMAND]
    request = fake.requests[0]
    assert request['argv'] == ['/usr/local/bin/python3', '-I', 'main.py']
    assert request['timeout'] == 60 and request['output_limit'] == 1024*1024
    assert request['stdin'] == 'input\n' and request['env']['REPORT']=='NC101A.log'
    assert 'target' not in request and REPORT not in json.dumps(request)


@pytest.mark.parametrize('completion', ['', 'print(1)', '```python\nx=1', '```python\n\n```',
                                        '```python\nx=1\n```\n```python\nx=2\n```'])
def test_missing_or_ambiguous_code_never_executes(monkeypatch, completion):
    fake=FakeSandbox(); install(monkeypatch,fake)
    assert asyncio.run(scoring.report_scorer()(state(completion),Target(''))).value == INCORRECT
    assert not fake.calls


def test_cleanup_failure_is_not_a_candidate_verdict(monkeypatch):
    class BrokenCleanup(FakeSandbox):
        async def exec(self, cmd, **kwargs):
            if cmd == scoring.QUIESCENCE_COMMAND: return result(returncode=2)
            return await super().exec(cmd, **kwargs)
    install(monkeypatch, BrokenCleanup())
    with pytest.raises(RuntimeError, match='details withheld'):
        asyncio.run(scoring.report_scorer()(state(),Target('')))


def test_receipt_authentication_and_schema():
    assert scoring.verify_receipt(signed_receipt(),KEY)
    assert scoring.verify_receipt(signed_receipt(),bytes(32)) is None
    assert scoring.verify_receipt(signed_receipt(timeout=1),KEY) is None
    assert scoring.verify_receipt(signed_receipt(cwd='/tmp/other'),KEY) is None


def test_supervisor_source_contract():
    compile(scoring.SETUP, '<setup>', 'exec')
    compile(scoring.RUNNER, '<runner>', 'exec')
    assert 'os.setresuid(CANDIDATE_UID' in scoring.RUNNER
    assert 'os.O_NOFOLLOW | os.O_NONBLOCK' in scoring.RUNNER
    assert 'shell=True' not in scoring.RUNNER
    assert 'request["stdin"].encode("latin1")' in scoring.RUNNER
    assert '**request["env"]' in scoring.RUNNER
    assert 'sweep_uid()' in scoring.RUNNER
