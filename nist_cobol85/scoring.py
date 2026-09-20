"""Authenticated sandbox execution; one shared REPORT normalizer, no model judge."""
from __future__ import annotations
import asyncio
import base64
import hashlib
import hmac
import json
import re
from inspect_ai.scorer import CORRECT, INCORRECT, Score, Target, accuracy, scorer
from inspect_ai.util import OutputLimitExceededError, sandbox
from .dataset import load_records
from .execution import execution_request
from .normalization import compare_reports, normalize_report
from .publication import private_grading
from .sandbox_runner import CLEANUP_COMMAND, QUIESCENCE_COMMAND, RUNNER, SETUP


def extract_code(completion):
    blocks = re.findall(r'^```python[^\S\n]*\r?\n(.*?)^```[^\S\n]*\r?$', completion, re.M | re.S)
    if len(blocks) == 1 and blocks[0].strip() and len(re.findall(r'^```', completion, re.M)) == 2:
        return blocks[0]
    return None


def score_report(report, reference):
    correct, matched, expected = compare_reports(report, reference)
    return Score(value=CORRECT if correct else INCORRECT,
                 explanation=f'Rows matched: {matched}/{expected}; normalized REPORT {"matches" if correct else "differs"}.')


def failed(reason, expected):
    return Score(value=INCORRECT, explanation=f'{reason}; rows matched: 0/{expected}.')


@scorer(metrics=[accuracy()])
def report_scorer():
    # Never serialize a reference REPORT in Sample, scorer arguments, or store.
    records = {r['task_id']: r for r in load_records()}

    async def private_score(state, target: Target):
        record = records[str(state.sample_id)]
        expected = sum(r[0] == 'row' for r in normalize_report(record['target']))
        code = extract_code(state.output.completion)
        if code is None:
            return failed('Expected one nonempty closed python fenced block', expected)
        request = json.dumps(execution_request(code, record))
        deadline = 70  # candidate 60s plus supervised teardown
        receipt = None
        cleanup_after = 0
        try:
            with private_grading(sandbox()) as private:
                try:
                    async with asyncio.timeout(10):
                        setup = await private.exec(
                            ['timeout', '-s', 'KILL', '5s', '/usr/local/bin/python3', '-I', '-c', SETUP],
                            cwd='/', input=request, timeout=5, timeout_retry=False)
                    setup_receipt = json.loads(setup.stdout)
                    work = setup_receipt['cwd']
                    key = bytes.fromhex(setup_receipt['key'])
                    if len(key) != 32 or not re.fullmatch(r'/tmp/nist-[a-zA-Z0-9_-]+', work):
                        raise RuntimeError('Invalid setup receipt')
                    cleanup_after = asyncio.get_running_loop().time() + deadline + 5
                    try:
                        async with asyncio.timeout(deadline + 5):
                            result = await private.exec(
                                ['timeout', '-s', 'KILL', f'{deadline}s', '/usr/local/bin/python3', '-I', '-c', RUNNER, work],
                                cwd='/', timeout=deadline, timeout_retry=False)
                        receipt = verify_receipt(result.stdout, key)
                        if receipt is not None and receipt['cwd'] == work:
                            cleanup_after = 0
                        else:
                            receipt = None
                    except Exception:
                        receipt = None
                finally:
                    cleanup = asyncio.create_task(cleanup_candidate(private, cleanup_after))
                    try:
                        await asyncio.shield(cleanup)
                    except asyncio.CancelledError:
                        await cleanup
                        raise
        except (TimeoutError, OutputLimitExceededError):
            return failed('Supervisor did not complete', expected)
        except Exception:
            raise RuntimeError('Private sandbox operation failed; details withheld.') from None
        if receipt is None:
            return failed('Supervisor did not complete', expected)
        if receipt['timeout']:
            return failed('Execution timeout', expected)
        if receipt['overflow']:
            return failed('Output limit exceeded', expected)
        if receipt['returncode'] != 0:
            return failed('Runtime error', expected)
        if receipt['missing_report']:
            return failed('Missing or unsafe REPORT file', expected)
        return score_report(receipt['output'], record['target'])

    async def score(state, target):
        try:
            return await private_score(state, target)
        except Exception:
            pass
        # Raise outside private frames to prevent traceback-locals publication.
        raise RuntimeError('Private scoring failed; details withheld.') from None
    return score


async def cleanup_candidate(environment, not_before: float = 0):
    """Independent reserved-UID cleanup on every path, including setup failure."""
    try:
        delay = not_before - asyncio.get_running_loop().time()
        if delay > 0:
            await asyncio.sleep(delay)
        async with asyncio.timeout(10):
            cleanup = await environment.exec(list(CLEANUP_COMMAND), cwd='/', timeout=5, timeout_retry=False)
        if cleanup.returncode not in (0, 1):
            raise RuntimeError('UID cleanup failed')
        async with asyncio.timeout(10):
            checked = await environment.exec(list(QUIESCENCE_COMMAND), cwd='/', timeout=5, timeout_retry=False)
        if checked.returncode != 0:
            raise RuntimeError('UID cleanup did not reach quiescence')
    except Exception:
        raise RuntimeError('Private sandbox cleanup failed; details withheld.') from None


def verify_receipt(stdout, key):
    """Authenticate supervisor bytes before trusting return status or file data."""
    try:
        envelope = json.loads(stdout)
        body, tag = envelope['body'], envelope['tag']
        if not hmac.compare_digest(hmac.new(key, body.encode(), hashlib.sha256).hexdigest(), tag):
            return None
        receipt = json.loads(body)
        if (type(receipt['returncode']) is not int
                or any(type(receipt[k]) is not bool for k in ('timeout', 'overflow', 'missing_report'))
                or receipt['stage'] != 'run'
                or not re.fullmatch(r'/tmp/nist-[a-zA-Z0-9_-]+', receipt['cwd'])):
            return None
        for field in ('output', 'stdout'):
            receipt[field] = base64.b64decode(receipt[field], validate=True).decode('latin1')
        return receipt
    except (ValueError, TypeError, KeyError, AttributeError, UnicodeError):
        return None
