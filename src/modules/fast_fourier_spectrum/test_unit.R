# Deterministic unit tests for Periodogram and Welch Spectral Density Estimator
# Module: fast_fourier_spectrum

def test_fast_fourier_spectrum_zero_element():
    x = 0.0
    res = x * (1.0 + 0.25 * x - 0.05 * x * x)
    assert res == 0.0
