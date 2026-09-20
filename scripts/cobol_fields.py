"""Conservative data-description models for expectation literals.

Unknown/ambiguous names, reference modification, floating editing, non-display
storage in groups, and unresolved COPY layouts are intentionally unsupported.
"""
from decimal import Decimal, InvalidOperation
import re


def expand_picture(picture):
    expanded = re.sub(r'([AX9SZVBP+*,./$0-])\((\d+)\)',
                      lambda m: m[1] * int(m[2]) if int(m[2]) <= 1000 else '?',
                      picture.upper())
    return expanded if len(expanded) <= 1000 else '?'


def picture_field(picture, usage='DISPLAY', sign=None):
    pic = expand_picture(picture)
    usage = usage.upper()
    if usage not in {'DISPLAY', 'COMP', 'COMPUTATIONAL', 'BINARY', 'COMP-3', 'COMPUTATIONAL-3', 'PACKED-DECIMAL'}:
        return None
    if re.fullmatch(r'S?9+(?:V9+)?|S?V9+', pic):
        left, _, right = pic.lstrip('S').partition('V')
        return dict(picture=picture, usage=usage, category='numeric',
                    integer=len(left), scale=len(right), signed=pic.startswith('S'), sign=sign)
    if usage != 'DISPLAY' or sign:
        return None
    if re.fullmatch(r'[AX9]+', pic) and ('A' in pic or 'X' in pic):
        return dict(picture=picture, usage=usage, category='text', slots=list(pic))
    # Only fixed insertion and leading zero suppression. Floating signs/currency
    # and scaling P require more semantics than this mutator claims to model.
    if re.fullmatch(r'[Z*9]+(?:,[Z*9]+)*(?:\.[9]+)?(?:CR|DB|[+-])?|[+$-]?[Z*9]*(?:,[Z*9]+)*(?:\.[9]+)?', pic):
        if not any(c in pic for c in 'Z*9') or ('Z' in pic and '*' in pic):
            return None
        tokens = re.findall(r'CR|DB|.', pic)
        return dict(picture=picture, usage=usage, category='edited', slots=tokens)
    return None


def storage_slots(field):
    if not field or field['usage'] != 'DISPLAY':
        return None
    if field['category'] != 'numeric':
        return field['slots']
    slots = ['9'] * (field['integer'] + field['scale'])
    if field['signed']:
        if not field['sign'] or 'SEPARATE' not in field['sign']:
            return None  # Zoned overpunch is not plain character data.
        if 'LEADING' in field['sign']:
            slots.insert(0, '+')
        else:
            slots.append('+')
    return slots


def data_fields(source):
    # Preserve literal boundaries so declaration-looking VALUE text cannot
    # become a declaration. Continued declarations are conservatively rejected.
    code = '\n'.join(line[7:72] if len(line) > 6 and line[6] == ' ' else
                     'UNSUPPORTED-CONTINUATION' if len(line) > 6 and line[6] == '-' else ''
                     for line in source.splitlines())
    if re.search(r'\bDECIMAL-POINT\s+IS\s+COMMA\b', code, re.I):
        return {}
    data = re.search(r'\bDATA\s+DIVISION\s*\.(.*?)\bPROCEDURE\s+DIVISION\b', code, re.S | re.I)
    if not data:
        return {}
    masked = re.sub(r'"(?:[^"\n]|"")*"|\'(?:[^\'\n]|\'\')*\'',
                    lambda m: ' ' * len(m[0]), data[1].upper())
    declarations = list(re.finditer(r'(?m)^\s*(\d{2})\s+([A-Z][A-Z0-9-]*)\b', masked))
    nodes, stack = [], []
    for i, match in enumerate(declarations):
        level = int(match[1])
        if level in {66, 88}:
            continue
        body = masked[match.end():declarations[i+1].start() if i+1 < len(declarations) else len(masked)]
        while stack and (stack[-1]['level'] >= level or level == 77):
            stack.pop()
        node = dict(name=match[2], level=level, body=body, children=[], parent=stack[-1] if stack else None)
        if stack:
            stack[-1]['children'].append(node)
        nodes.append(node)
        stack.append(node)

    def inherited(node, pattern, default):
        while node:
            match = re.search(pattern, node['body'])
            if match:
                return match[1]
            node = node['parent']
        return default

    def model(node):
        body = node['body']
        ancestor = node
        while ancestor:
            if re.search(r'\b(?:COPY|RENAMES|DEPENDING|UNSUPPORTED-CONTINUATION)\b', ancestor['body']):
                return None
            ancestor = ancestor['parent']
        usage, ancestor = 'DISPLAY', node
        while ancestor:
            explicit = re.search(r'\bUSAGE\s+(?:IS\s+)?([A-Z][A-Z0-9-]*)', ancestor['body'])
            shorthand = re.search(r'(?<![A-Z0-9-])(DISPLAY(?:-[A-Z0-9]+)?|COMP(?:UTATIONAL)?(?:-[A-Z0-9]+)?|BINARY|PACKED-DECIMAL|INDEX|POINTER|NATIONAL)(?![A-Z0-9-])', ancestor['body'])
            if explicit or shorthand:
                usage = (explicit or shorthand)[1]
                break
            ancestor = ancestor['parent']
        sign = inherited(node, r'\bSIGN\s+(?:IS\s+)?((?:LEADING|TRAILING)(?:\s+SEPARATE(?:\s+CHARACTER)?)?)', None)
        pic = re.search(r'\bPIC(?:TURE)?\s+(?:IS\s+)?([^\s]+)', body)
        if pic:
            return picture_field(pic[1].rstrip('.'), usage, sign)
        if 'REDEFINES' in body or not node['children']:
            return None
        slots = []
        for child in node['children']:
            child_field = model(child)
            part = storage_slots(child_field)
            if 'REDEFINES' in child['body'] or (child_field and child_field['category'] == 'edited'):
                return None
            occurs = re.search(r'\bOCCURS\s+(\d+)(?:\s+TO\s+\d+)?', child['body'])
            if part is None or (occurs and ' TO ' in occurs[0]):
                return None
            slots.extend(part * (int(occurs[1]) if occurs else 1))
        if len(slots) > 1000:
            return None
        return dict(category='group', usage='DISPLAY', slots=slots)

    fields = {}
    for node in nodes:
        name = node['name']
        if name in fields:
            fields[name] = None  # Qualification resolution is unsupported.
        else:
            fields[name] = model(node)
    return fields


def resolve_field(fields, item):
    if ':' in item:
        return None
    return fields.get(re.sub(r'\s*\([^)]*\)', '', item).strip().upper())


def representable(literal, field):
    if not field:
        return False
    quoted = literal.startswith(('"', "'"))
    raw = literal[1:-1] if quoted else literal
    if quoted and (literal[0] in raw):
        return False  # Escaped quotes are outside the supported literal subset.
    if field['category'] in {'numeric', 'edited'} and not quoted:
        if field['category'] == 'edited':
            pic = ''.join(field['slots'])
            left, _, right = pic.partition('.')
            field = dict(integer=sum(c in '9Z*' for c in left),
                         scale=sum(c in '9Z*' for c in right),
                         signed=any(c in pic for c in '+-') or 'CR' in pic or 'DB' in pic)
        try:
            number = Decimal(raw)
        except InvalidOperation:
            return False
        return (number.is_finite() and (number >= 0 or field['signed'])
                and abs(number) < Decimal(10) ** field['integer']
                and number * Decimal(10) ** field['scale'] == (number * Decimal(10) ** field['scale']).to_integral_value())
    if not quoted:
        return False
    slots = storage_slots(field)
    if slots is not None and field['category'] in {'text', 'group'}:
        raw = raw.ljust(sum(len(s) for s in slots))
    if slots is None or len(raw) != sum(len(s) for s in slots):
        return False
    position = 0
    significant = False
    for slot in slots:
        char = raw[position:position+len(slot)]
        position += len(slot)
        if slot == '9':
            if char not in '0123456789': return False
            significant = True
        elif slot == 'A':
            if not (char.isascii() and (char.isalpha() or char == ' ')): return False
        elif slot == 'X':
            if not char.isascii(): return False
        elif slot in {'Z', '*'}:
            fill = ' ' if slot == 'Z' else '*'
            if not significant and char == fill: continue
            if char not in ('0123456789' if significant else '123456789'): return False
            significant = True
        elif slot == '+':
            if char not in '+-': return False
        elif slot == '-':
            if char not in ' -': return False
        elif slot in {'CR', 'DB'}:
            if char not in {slot, '  '}: return False
        elif slot == ',':
            if char != (',' if significant else ' '): return False
        elif char != slot:
            return False
    return True


def paired_literal(mutated, original, correct):
    if correct.startswith('+') and not original.startswith('+'):
        return '+' + mutated
    if original.startswith('+') and not correct.startswith('+'):
        return mutated[1:]
    return mutated


def run_outlier(raw):
    """A digit segment with one exceptional digit is cheaply repairable."""
    if re.search(r'([0-9])\1+(?!\1)[0-9]\1{2,}', raw):
        return True
    for part in re.findall(r'[0-9]+', raw):
        if len(part) >= 3 and any(part.count(c) == len(part)-1 for c in set(part)):
            return True
    return False


def pattern_replacements(raw):
    # A maximal word-like token is indivisible. Rotate every letter/digit in
    # that token together, retaining case, repeated characters and separators.
    if re.search(r'[A-Za-z]', raw):
        for token in re.finditer(r'[A-Za-z0-9]+', raw):
            if not re.search(r'[A-Za-z]', token[0]):
                continue
            for delta in range(1, 10):
                changed = ''
                for char in token[0]:
                    alphabet = ('0123456789' if char.isdigit() else
                                'ABCDEFGHIJKLMNOPQRSTUVWXYZ' if char.isupper() else
                                'abcdefghijklmnopqrstuvwxyz')
                    changed += alphabet[(alphabet.index(char) + delta) % len(alphabet)]
                yield raw[:token.start()] + changed + raw[token.end():]
        return
    runs = list(re.finditer(r'([0-9])\1+', raw))
    if runs:
        for run in runs:
            for digit in '0123456789':
                if digit == run[1]:
                    continue
                # Keep maximal run boundaries, not just the overall width.
                if ((run.start() and raw[run.start()-1] == digit)
                        or (run.end() < len(raw) and raw[run.end()] == digit)):
                    continue
                yield raw[:run.start()] + digit * len(run[0]) + raw[run.end():]
        return
    # Apply a delta to the scaled magnitude, then restore every sign, decimal,
    # editing character and digit position. Do not introduce repeated runs.
    positions = [i for i, c in enumerate(raw) if c in '0123456789']
    if not positions:
        return
    digits = ''.join(raw[i] for i in positions)
    for power in range(len(digits)):
        for delta in range(-9, 10):
            magnitude = int(digits) + delta * 10 ** power
            if not delta or magnitude < 0:
                continue
            replacement = str(magnitude).zfill(len(digits))
            if len(replacement) != len(digits) or (digits[0] != '0' and replacement[0] == '0'):
                continue
            changed = list(raw)
            for i, digit in zip(positions, replacement):
                changed[i] = digit
            changed = ''.join(changed)
            if not re.search(r'([0-9])\1', changed):
                yield changed


def replacement_options(literal, correct, field, correct_field):
    if not representable(literal, field) or not representable(correct, correct_field):
        return []
    quoted = literal.startswith(('"', "'"))
    raw = literal[1:-1] if quoted else literal
    options = []
    # CR/DB are fixed editing symbols, not word tokens.
    suffix = raw[-2:] if field['category'] == 'edited' and raw.endswith(('CR', 'DB')) else ''
    body = raw[:-2] if suffix else raw
    for replacement in pattern_replacements(body):
        replacement += suffix
        if not re.search(r'[A-Za-z]', body) and run_outlier(replacement):
            continue
        changed = literal[0] + replacement + literal[-1] if quoted else replacement
        paired = paired_literal(changed, literal, correct)
        if (changed != literal and representable(changed, field)
                and representable(paired, correct_field) and changed not in options):
            options.append(changed)
    return options
