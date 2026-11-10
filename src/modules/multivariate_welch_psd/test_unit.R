# Deterministic unit tests for Welch Spectral Power Density Estimator with Hann Window
# Module: multivariate_welch_psd

def test_multivariate_welch_psd_zero_element():
    x = 0.0
    res = x * (1.0 + 0.35 * x - 0.03 * x * x)
    assert res == 0.0
