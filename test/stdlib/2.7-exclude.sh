SKIP_TESTS=(
    # object() takes no parameters
    # We must have bolixed function args here
    [test_asyncore.py]=1

    [test_abc.py]=1 #
    [test_array.py]=1 #
    [test_ast.py]=1 #

    # AttributeError: 'AnyDBMTestCase' object has no attribute '_testMethodName'
    [test_anydbm.py]=1

    [test_asynchat.py]=1 # Dies in a horrible mess

    # File "x-python/xpython/pyobj.py", line 165, in __call__
    # callargs = inspect.getcallargs(self._func, *args, **kwargs)
    # File "lib/python2.7/inspect.py", line 947, in getcallargs
    # assign(arg, value)
    # File "lib/python2.7/inspect.py", line 934, in assign
    # raise ValueError('too many values to unpack')
    # ValueError: too many values to unpack
    [test_audioop.py]=1

    # We get:
    #   Cannot create a consistent method resolution
    #   order (MRO) for bases TestCase, AifcTest, object
    [test_aifc.py]=1

    [test_applesingle.py]=1 # fails on its own
    [test_argparse.py]=1 # fails on its own
    [test_aepack.py]=1 # fails on its own
    [test___all__.py]=1 # fails on its own
    [test_al.py]=1 # fails on its own

    [test_bdb.py]=1

    [test_curses.py]=1  # Possibly fails on its own but not detected
    [test_cmd_line.py]=1 # Takes too long, maybe hangs, or looking for interactive input?
    [test_doctest.py]=1 # Fails on its own
    [test_exceptions.py]=1
    [test_format.py]=1 # Control flow "and" vs nested "if"
    [test_grammar.py]=1     # Too many stmts. Handle large stmts
    [test_grp.py]=1     # test takes to long, works interactively though
    [test_io.py]=1 # Test takes too long to run
    [test_ioctl.py]=1 # Test takes too long to run
    [test_lib2to3.py]=1 # test takes too long to run: 28 seconds
    [test_math.py]=1
    [test_memoryio.py]=1 # FIX
    [test_multiprocessing.py]=1 # On uncompyle2, takes 24 secs
    [test_poll.py]=1  # test takes too long to run: 11 seconds
    [test_pwd.py]=1     # Takes too long
    [test_regrtest.py]=1 #
    [test_runpy.py]=1   # Long and fails on its own
    [test_select.py]=1  # Runs okay but takes 11 seconds
    [test_socket.py]=1  # Runs ok but takes 22 seconds
    [test_ssl.py]=1  #
    [test_subprocess.py]=1 # Runs ok but takes 22 seconds
    [test_sys_settrace.py]=1 # Line numbers are expected to be different

    [test_tokenize.py]=1 # test takes too long to run: 19 seconds
    [test_traceback.py]=1 # Line numbers change - duh.
    [test_unicode.py]=1  # Too long to run 11 seconds
    [test_xpickle.py]=1 # Runs ok but takes 72 seconds
    [test_zipfile64.py]=1  # Runs ok but takes 204 seconds
    [test_zipimport.py]=1  #
)
# 334 unit-test files in about 15 minutes

if (( BATCH )) ; then
    # Fails in crontab environment?
    # Figure out what's up here
    SKIP_TESTS[test_array.py]=1
    SKIP_TESTS[test_ast.py]=1
    SKIP_TESTS[test_audioop.py]=1
    SKIP_TESTS[test_doctest2.py]=1 # a POWER thing?
    SKIP_TESTS[test_httplib.py]=1  # Ok, but POWER has problems with this
    SKIP_TESTS[test_pdb.py]=1 # Ok, but POWER has problems with this
    SKIP_TESTS[test_tarfile.py]=1 # test can take over 15 seconds to run on an overloaded POWER7 system

    # SyntaxError: Non-ASCII character '\xdd' in file test_base64.py on line 153, but no encoding declared; see http://www.python.org/peps/pep-0263.html for details
    SKIP_TESTS[test_base64.py]=1
fi
