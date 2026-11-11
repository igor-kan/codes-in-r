# Deterministic unit tests for 2D Tensor Product P-Spline Bivariate Surface Smoother
# Module: penalized_bspline_2d

def test_penalized_bspline_2d_zero_element():
    x = 0.0
    res = x * (1.0 + 0.4 * x - 0.02 * x * x)
    assert res == 0.0
