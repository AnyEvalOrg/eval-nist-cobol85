import asyncio
import json
import logging
import pytest
from inspect_ai.log._transcript import Transcript, _transcript
from inspect_ai.scorer import Target
from inspect_ai.util._sandbox.events import SandboxEnvironmentProxy
from nist_cobol85.publication import private_grading
from nist_cobol85.task import record_to_sample
import nist_cobol85.scoring as scoring
from test_scoring import FakeSandbox, install, record, state


@pytest.mark.parametrize('outcome', ['success','infrastructure'])
def test_report_never_enters_sample_events_or_logs(monkeypatch, caplog, outcome):
    secret='PRIVATE_REPORT_SENTINEL'
    fixture={**record(),'target':record()['target']+'\n'+secret}
    class LoggingSandbox(FakeSandbox):
        async def exec(self,cmd,**kwargs):
            logging.getLogger('k8s_sandbox._logger').error(secret)
            if outcome=='infrastructure': raise ConnectionError(secret)
            return await super().exec(cmd,**kwargs)
    install(monkeypatch,LoggingSandbox())
    monkeypatch.setattr(scoring,'load_records',lambda:[fixture])
    transcript=Transcript(); token=_transcript.set(transcript)
    try:
        try:
            score=asyncio.run(scoring.report_scorer()(state(),Target('')))
            details=score.model_dump(mode='json')
        except RuntimeError as error:
            from inspect_ai._util.rich import format_traceback
            monkeypatch.setenv('INSPECT_TRACEBACK_LOCALS','1')
            plain,ansi=format_traceback(type(error),error,error.__traceback__.tb_next)
            details={'error':str(error),'traceback':plain,'ansi':ansi}
        rendered=json.dumps({'sample':record_to_sample(fixture).model_dump(mode='json'),
                             'score':details,'events':[e.model_dump(mode='json') for e in transcript.events]})
        assert secret not in rendered and secret not in caplog.text
        assert not any(e.event=='sandbox' for e in transcript.events)
    finally:
        _transcript.reset(token)


def test_private_proxy_keeps_public_diagnostics(caplog):
    public=SandboxEnvironmentProxy(FakeSandbox())
    with private_grading(public):
        assert public._events is True
        logging.getLogger('k8s_sandbox._logger').error('PRIVATE_DIAGNOSTIC')
    logging.getLogger('k8s_sandbox._logger').error('PUBLIC_DIAGNOSTIC')
    assert 'PRIVATE_DIAGNOSTIC' not in caplog.text
    assert 'PUBLIC_DIAGNOSTIC' in caplog.text
