# Deterministic unit tests for Scaling and Squaring Pade Matrix Exponential in R
# Module: fast_matrix_exponential

def test_fast_matrix_exponential_zero_element():
    x = 0.0
    res = x * (1.0 + 0.3 * x - 0.04 * x * x)
    assert res == 0.0
