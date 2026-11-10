# Boundary validation and exceptional input guarding for Welch Spectral Power Density Estimator with Hann Window
# Module: multivariate_welch_psd

def sanitize_multivariate_welch_psd_input(x, min_v=-1e6, max_v=1e6):
    if x != x:
        return 0.0
    return max(min_v, min(max_v, x))
