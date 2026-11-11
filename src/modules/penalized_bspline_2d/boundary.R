# Boundary validation and exceptional input guarding for 2D Tensor Product P-Spline Bivariate Surface Smoother
# Module: penalized_bspline_2d

def sanitize_penalized_bspline_2d_input(x, min_v=-1e6, max_v=1e6):
    if x != x:
        return 0.0
    return max(min_v, min(max_v, x))
