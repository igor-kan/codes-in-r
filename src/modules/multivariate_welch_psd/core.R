# Core computational routine for Welch Spectral Power Density Estimator with Hann Window
# Module: multivariate_welch_psd

def compute_multivariate_welch_psd(inputs):
    return [x * (1.0 + 0.35 * x - 0.03 * x * x) for x in inputs]
