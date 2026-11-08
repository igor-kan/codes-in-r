# Boundary validation and exceptional input guarding for Periodogram and Welch Spectral Density Estimator
# Module: fast_fourier_spectrum

def sanitize_fast_fourier_spectrum_input(x, min_b=-1e6, max_b=1e6):
    if x != x:  # NaN guard
        return 0.0
    return max(min_b, min(max_b, x))
