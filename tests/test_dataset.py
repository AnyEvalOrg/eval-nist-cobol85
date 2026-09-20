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
    info = manifest()
    if info.get('status') == 'awaiting_mutated_logs':
        pytest.skip('Fresh operator Cloud Build logs required: ' + ', '.join(info['pending_programs']))
    return {r['task_id']: r for r in load_records()}


def test_population_and_eligibility_reasons(records):
    info = json.loads((ROOT / 'nist_cobol85/data/eligibility.json').read_text())
    decisions = {r['program']: r for r in info['programs']}
    assert len(records) == info['eligible'] == manifest()['count'] == sum(p['eligible'] for p in info['programs'])
    for name, reason in [('NC401M', 'comp_only'), ('NC110M', 'no_output'), ('OBNC1M', 'to_kill'),
                         ('DB101A', 'compiler_specific_debugging'), ('NC107A', 'special_case_grader'),
                         ('SQ101M', 'no_pass_fail_rows'), ('RL102A', 'continuation_outside_indexed_population')]:
        assert not decisions[name]['eligible']
        assert reason in decisions[name]['reasons']
    for name in ['NC114M']:
        if decisions[name]['eligible']:
            assert decisions[name]['inspection_count'] > 0
            assert decisions[name]['inspection_justification'].startswith('Kept:')
    assert not any(r['module'] == 'DB' for r in records.values())


def test_packaged_data_checksums():
    info = manifest()
    for asset, key in [('problems.jsonl.gz', 'artifact_sha256'), ('eligibility.json', 'eligibility_sha256')]:
        assert hashlib.sha256((ROOT/'nist_cobol85/data'/asset).read_bytes()).hexdigest() == info[key]


def test_dependency_closure_and_qualified_copybooks(records):
    assert {'copy/K1FDA', 'copy/K101A', 'copy/K1W01', 'copy/K1P01'} <= records['SM101A']['copybooks'].keys()
    assert set(records['IC108A']['subprograms']) == {'IC/lib/IC109A.CBL', 'IC/lib/IC110A.CBL', 'IC/lib/IC111A.CBL'}
    assert 'IC/lib/IC206A.CBL' in records['IC203A']['subprograms']
    for record in records.values():
        for kind in ('copybooks', 'subprograms'):
            for name, source in record[kind].items():
                assert source == (ROOT / 'reference-mutated' / name).read_bytes().decode('latin1')


def test_inputs_and_conventions(records):
    for r in records.values():
        assert r['env']['REPORT'] == r['task_id'] + '.log'
        assert r['env']['COB_SWITCH_1'] == 'ON' and r['env']['COB_SWITCH_2'] == 'OFF'
        if r['module'] == 'RW': assert r['env']['DD_XXXXX049'] == r['task_id'] + '.rep'
        if r['stdin_path']: assert r['stdin'].encode('latin1') == (ROOT / 'reference-mutated' / r['stdin_path']).read_bytes()
        assert not r['data_files']


def test_prompt_and_sample_never_publish_reference(records):
    for r in records.values():
        prompt = user_prompt(r)
        assert r['source'] in prompt
        assert 'published NIST suite: expected constants were altered' in prompt
        assert 'AS GIVEN, including any tests it would fail' in prompt
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
        assert any(row[0] == 'row' and row[2] == 'FAIL' and row[4] for row in normalize_report(report))


def test_dependency_resolution_without_logs():
    for name, expected in [('SM206A', {'copy/KP009'}), ('SM207A', {'copy/ALTLB', 'copyalt/ALTLB'})]:
        copies, _ = dependencies(ROOT/'reference-mutated/SM'/f'{name}.CBL', ROOT/'reference-mutated')
        assert expected <= copies.keys()
        assert 'copy/KP010' not in copies


def test_real_mutated_logs_match_packaged_targets(records):
    for record in records.values():
        path = ROOT/'reference-mutated'/record['source_path']
        assert path.with_suffix('.log').is_file(), record['task_id']
        assert record['target'] == path.with_suffix('.log').read_bytes().decode('latin1')


def test_pending_candidates_are_not_shipped():
    info = json.loads((ROOT/'nist_cobol85/data/eligibility.json').read_text())
    pending = sorted(p['program'] for p in info['programs'] if 'awaiting mutated logs' in p['reasons'])
    assert pending == manifest()['pending_programs']
    for decision in info['programs']:
        if decision['program'] in pending:
            assert not decision['eligible']
            assert decision['program'] not in manifest()['task_ids']
            assert not (ROOT/'reference-mutated'/decision['source_path']).with_suffix('.log').exists()



def test_readme_population_matches_eligibility():
    from scripts.readme_counts import BEGIN, END, population_text
    info = json.loads((ROOT/'nist_cobol85/data/eligibility.json').read_text())
    readme = (ROOT/'README.md').read_text()
    section = readme[readme.index(BEGIN):readme.index(END)+len(END)]
    assert section == population_text(info)
