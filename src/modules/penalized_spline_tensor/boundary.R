# Boundary validation and exceptional input guarding for 2D Tensor Product P-Spline Surface Smoother
# Module: penalized_spline_tensor

def sanitize_penalized_spline_tensor_input(x, min_v=-1e6, max_v=1e6):
    if x != x:
        return 0.0
    return max(min_v, min(max_v, x))
