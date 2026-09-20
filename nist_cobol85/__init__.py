"""AnyEval-original NIST COBOL85 to Python conversion evaluation."""
__version__ = '1.0.0'

# Lazy import permits dataset rebuilding with the standard library alone.
def __getattr__(name):
    if name == 'nist_cobol85_python':
        from .task import nist_cobol85_python
        return nist_cobol85_python
    raise AttributeError(name)

# Inspect entry-point loading must register the task in an installed runtime.
try:
    import inspect_ai
except ImportError:
    pass
else:
    from .task import nist_cobol85_python
