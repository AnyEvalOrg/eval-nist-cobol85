#!/usr/bin/env python3
"""Cold-discover an installed wheel outside the checkout, with network disabled.

python scripts/verify_wheel.py .build/wheel-env/site-packages
"""
import argparse
from pathlib import Path
import os
import socket
import sys


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('site_packages',type=Path)
    installed=parser.parse_args().site_packages.resolve()
    root=Path(__file__).resolve().parents[1]
    empty=root/'.build/empty';empty.mkdir(parents=True,exist_ok=True)
    os.chdir(empty)
    sys.path=[str(installed)]+[p for p in sys.path if p and not Path(p).resolve().is_relative_to(root)]
    def blocked(*args,**kwargs): raise AssertionError('Network disabled during wheel validation')
    socket.create_connection=blocked;socket.socket.connect=blocked
    from inspect_ai._util.registry import registry_create
    task=registry_create('task','nist_cobol85/nist_cobol85_python',sandbox_type='docker')
    import nist_cobol85
    from nist_cobol85.dataset import manifest, load_records
    from nist_cobol85.normalization import compare_reports
    from importlib.resources import files
    from importlib.metadata import version
    assert Path(nist_cobol85.__file__).is_relative_to(installed)
    assert version('eval-nist-cobol85')=='1.0.0'
    assert len(task.dataset)==manifest()['count']
    assert [s.id for s in task.dataset]==manifest()['task_ids']
    assert task.epochs==1 and Path(task.sandbox.config).is_relative_to(installed)
    for sample,record in zip(task.dataset,load_records()):
        assert record['target'] not in sample.input and not sample.target
        assert compare_reports(record['target'],record['target'])[0]
    for asset in ('Dockerfile','values.yaml','compose.yaml','chart/Chart.yaml','chart/templates/pod.yaml',
                  'chart/templates/network-policy.yaml','data/eligibility.json'):
        assert files('nist_cobol85').joinpath(asset).is_file()
    assert not files('nist_cobol85').joinpath('reference').is_dir()
    default=registry_create('task','nist_cobol85/nist_cobol85_python')
    assert Path(default.sandbox.config.chart).is_relative_to(installed)
    print('Cold installed-wheel validation: PASS; 1 task, exact manifest ids; all targets self-match; network disabled.')


if __name__=='__main__': main()
