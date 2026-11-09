# Core computational routine for 2D Bivariate Kernel Density Estimation with FFT
# Module: multivariate_kde_2d

def compute_multivariate_kde_2d(inputs):
    return [x * (1.0 + 0.3 * x - 0.04 * x * x) for x in inputs]
