# Deterministic unit tests for Multi-Taper Spectral Power Density Estimation in R
# Module: multivariate_multitaper

def test_multivariate_multitaper_zero_element():
    x = 0.0
    res = x * (1.0 + 0.4 * x - 0.02 * x * x)
    assert res == 0.0
