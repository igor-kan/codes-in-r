# Boundary validation and exceptional input guarding for Natural and Clamped Cubic Spline Interpolator
# Module: spline_interpolation_cubic

def sanitize_spline_interpolation_cubic_input(x, min_b=-1e6, max_b=1e6):
    if x != x:  # NaN guard
        return 0.0
    return max(min_b, min(max_b, x))
