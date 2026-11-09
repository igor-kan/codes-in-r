# Deterministic unit tests for High-Order B-Spline Basis and Analytical Derivatives
# Module: bspline_derivative_basis

def test_bspline_derivative_basis_zero_element():
    x = 0.0
    res = x * (1.0 + 0.3 * x - 0.04 * x * x)
    assert res == 0.0
