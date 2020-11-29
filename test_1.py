import pytest

def test_func():
    assert 1 == 1

def test_func_2():
    assert 2 == 2

@pytest.mark.xfail(reason="expected to fail")
def test_func_3():
    assert 3 == 1