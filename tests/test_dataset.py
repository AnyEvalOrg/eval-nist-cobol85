import gzip
import hashlib
import json
from pathlib import Path
import pytest
from nist_cobol85.dataset import load_records, manifest
from nist_cobol85.prompts import user_prompt
from nist_cobol85.task import record_to_sample
from scripts.build_dataset import build, dependencies

ROOT = Path(__file__).resolve().parents[1]


@pytest.fixture(scope='module')
def records():
    return {r['task_id']: r for r in load_records()}


def test_population_and_eligibility_reasons(records):
    info = json.loads((ROOT / 'nist_cobol85/data/eligibility.json').read_text())
    decisions = {r['program']: r for r in info['programs']}
    assert len(records) == info['eligible'] == manifest()['count'] == 323
    for name, reason in [('NC401M', 'comp_only'), ('NC110M', 'no_output'), ('OBNC1M', 'to_kill'),
                         ('DB101A', 'compiler_specific_debugging'), ('NC107A', 'special_case_grader'),
                         ('SQ101M', 'no_pass_fail_rows'), ('RL102A', 'continuation_outside_indexed_population')]:
        assert not decisions[name]['eligible']
        assert reason in decisions[name]['reasons']
    for name in ['NC114M', 'SQ201M']:
        assert decisions[name]['eligible'] and decisions[name]['inspection_count'] > 0
        assert decisions[name]['inspection_justification'].startswith('Kept:')
    assert not any(r['module'] == 'DB' for r in records.values())


def test_rebuild_is_byte_reproducible(tmp_path):
    records, _, _ = build(ROOT / 'reference', tmp_path)
    for name in ('problems.jsonl.gz', 'manifest.json', 'eligibility.json'):
        assert (tmp_path / name).read_bytes() == (ROOT / 'nist_cobol85/data' / name).read_bytes()


def test_dependency_closure_and_qualified_copybooks(records):
    assert {'copy/K1FDA', 'copy/K101A', 'copy/K1W01', 'copy/K1P01'} <= records['SM101A']['copybooks'].keys()
    assert 'copy/KP009' in records['SM206A']['copybooks']
    assert 'copy/KP010' not in records['SM206A']['copybooks']
    assert set(records['SM207A']['copybooks']) == {'copy/ALTLB', 'copyalt/ALTLB'}
    assert set(records['IC108A']['subprograms']) == {'IC/lib/IC109A.CBL', 'IC/lib/IC110A.CBL', 'IC/lib/IC111A.CBL'}
    assert 'IC/lib/IC206A.CBL' in records['IC203A']['subprograms']
    for record in records.values():
        for kind in ('copybooks', 'subprograms'):
            for name, source in record[kind].items():
                assert source == (ROOT / 'reference' / name).read_bytes().decode('latin1')


def test_inputs_and_conventions(records):
    for r in records.values():
        assert r['env']['REPORT'] == r['task_id'] + '.log'
        assert r['env']['COB_SWITCH_1'] == 'ON' and r['env']['COB_SWITCH_2'] == 'OFF'
        if r['module'] == 'RW': assert r['env']['DD_XXXXX049'] == r['task_id'] + '.rep'
        if r['stdin_path']: assert r['stdin'].encode('latin1') == (ROOT / 'reference' / r['stdin_path']).read_bytes()
        assert not r['data_files']


def test_prompt_and_sample_never_publish_reference(records):
    for r in records.values():
        prompt = user_prompt(r)
        assert r['source'] in prompt
        assert r['target'] not in prompt
        poisoned = {**r, 'target': 'PRIVATE_REPORT_SENTINEL', 'report': 'SECRET_METADATA'}
        assert user_prompt(poisoned) == prompt
        sample = record_to_sample(poisoned)
        rendered = sample.model_dump_json()
        assert 'PRIVATE_REPORT_SENTINEL' not in rendered and 'SECRET_METADATA' not in rendered
        assert not sample.target


def test_all_reference_reports_self_match(records):
    from nist_cobol85.normalization import compare_reports, normalize_report
    for record in records.values():
        report = record['target']
        assert compare_reports(report, report)[0]
        assert any(row[0] == 'row' and row[2] in {'PASS','FAIL'} for row in normalize_report(report))
