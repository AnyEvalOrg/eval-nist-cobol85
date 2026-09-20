"""Allowlisted source and execution conventions; no reference REPORT material."""
import json

SYSTEM_MESSAGE = ('Convert the supplied COBOL program faithfully to Python 3, preserving its behavior, '
                  'data handling, and printer output. Implement all required subprogram behavior in your '
                  'Python program. Return exactly one nonempty fenced python block containing the complete program.')


def user_prompt(record):
    prompt = [f'Convert NIST CCVS85 program {record["task_id"]} to Python 3.',
              'Your Python program is executed as `python3 -I main.py` in a fresh scratch directory. '
              'Only Python 3.12 standard-library facilities are available to the conversion. '
              'Execution has a 60-second timeout and a 1 MiB output limit. '
              'Environment variable REPORT names the report file your program must write. '
              'Write exactly what the COBOL program would print to its printer file; preserve fixed-column '
              'result rows and summaries. Any other stdout is captured but is not the REPORT. '
              'The switches are COB_SWITCH_1=ON and COB_SWITCH_2=OFF. '
              'Files created by this program begin absent. Supporting COBOL and COPY sources below are '
              'conversion input; incorporate their behavior into main.py.',
              'Environment: ' + json.dumps(record['env'], sort_keys=True),
              'Reference compilation conventions: ' + ' '.join(record['cobc_flags']),
              'stdin (JSON string; escapes specify exact characters): ' + json.dumps(record['stdin']),
              'Source COBOL:\n```cobol\n' + record['source'] + '\n```']
    for kind in ('copybooks', 'subprograms'):
        for name, source in record[kind].items():
            prompt.append(f'{kind}: {name}\n```cobol\n{source}\n```')
    for name, content in record['data_files'].items():
        prompt.append(f'Initial data file {name} (JSON string): ' + json.dumps(content))
    prompt.append('Return the complete main.py in one fenced python block.')
    return '\n\n'.join(prompt)
