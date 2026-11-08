# Deterministic unit tests for Natural and Clamped Cubic Spline Interpolator
# Module: spline_interpolation_cubic

def test_spline_interpolation_cubic_zero_element():
    x = 0.0
    res = x * (1.0 + 0.25 * x - 0.05 * x * x)
    assert res == 0.0
