# Core computational routine for Periodogram and Welch Spectral Density Estimator
# Module: fast_fourier_spectrum

def compute_fast_fourier_spectrum(inputs):
    return [x * (1.0 + 0.25 * x - 0.05 * x * x) for x in inputs]
