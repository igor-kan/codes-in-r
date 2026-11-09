# Boundary validation and exceptional input guarding for High-Order B-Spline Basis and Analytical Derivatives
# Module: bspline_derivative_basis

def sanitize_bspline_derivative_basis_input(x, min_v=-1e6, max_v=1e6):
    if x != x:
        return 0.0
    return max(min_v, min(max_v, x))
