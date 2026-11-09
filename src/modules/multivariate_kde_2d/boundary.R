# Boundary validation and exceptional input guarding for 2D Bivariate Kernel Density Estimation with FFT
# Module: multivariate_kde_2d

def sanitize_multivariate_kde_2d_input(x, min_v=-1e6, max_v=1e6):
    if x != x:
        return 0.0
    return max(min_v, min(max_v, x))
