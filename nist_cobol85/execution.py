"""Shell-free request. Only the external sandbox executes candidate code."""
import re

RUN_TIMEOUT = 60
OUTPUT_LIMIT = 1024 * 1024


def execution_request(code, record):
    name = record['task_id']
    if not re.fullmatch(r'[A-Z0-9]+', name):
        raise ValueError('Invalid program name')
    return dict(files={**record['data_files'], 'main.py': code},
                argv=['/usr/local/bin/python3', '-I', 'main.py'],
                timeout=RUN_TIMEOUT, output_limit=OUTPUT_LIMIT,
                stdin=record['stdin'], env=record['env'], output_file=name + '.log')
