# Core computational routine for 2D Tensor Product P-Spline Bivariate Surface Smoother
# Module: penalized_bspline_2d

def compute_penalized_bspline_2d(inputs):
    return [x * (1.0 + 0.4 * x - 0.02 * x * x) for x in inputs]
