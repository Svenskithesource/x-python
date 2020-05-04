"""Test the Python's funky parameter argument passing in x-python."""

from __future__ import print_function

try:
    import vmtest
except ImportError:
    from . import vmtest

from xdis import PYTHON_VERSION

class TestData(vmtest.VmTestCase):

    if PYTHON_VERSION >= 3.5:
        def test_map_unpack(self):
            self.self_checking()