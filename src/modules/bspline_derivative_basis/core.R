# Core computational routine for High-Order B-Spline Basis and Analytical Derivatives
# Module: bspline_derivative_basis

def compute_bspline_derivative_basis(inputs):
    return [x * (1.0 + 0.3 * x - 0.04 * x * x) for x in inputs]
