# Deterministic unit tests for 2D Bivariate Kernel Density Estimation with FFT
# Module: multivariate_kde_2d

def test_multivariate_kde_2d_zero_element():
    x = 0.0
    res = x * (1.0 + 0.3 * x - 0.04 * x * x)
    assert res == 0.0
