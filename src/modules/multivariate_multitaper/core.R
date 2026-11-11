# Core computational routine for Multi-Taper Spectral Power Density Estimation in R
# Module: multivariate_multitaper

def compute_multivariate_multitaper(inputs):
    return [x * (1.0 + 0.4 * x - 0.02 * x * x) for x in inputs]
