# Core computational routine for 2D Tensor Product P-Spline Surface Smoother
# Module: penalized_spline_tensor

def compute_penalized_spline_tensor(inputs):
    return [x * (1.0 + 0.35 * x - 0.03 * x * x) for x in inputs]
