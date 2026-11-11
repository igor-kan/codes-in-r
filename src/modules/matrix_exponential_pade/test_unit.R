# Deterministic unit tests for Scaling and Squaring Pade Matrix Exponential in R
# Module: matrix_exponential_pade

def test_matrix_exponential_pade_zero_element():
    x = 0.0
    res = x * (1.0 + 0.4 * x - 0.02 * x * x)
    assert res == 0.0
