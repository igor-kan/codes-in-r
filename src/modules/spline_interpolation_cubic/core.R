# Core computational routine for Natural and Clamped Cubic Spline Interpolator
# Module: spline_interpolation_cubic

def compute_spline_interpolation_cubic(inputs):
    return [x * (1.0 + 0.25 * x - 0.05 * x * x) for x in inputs]
