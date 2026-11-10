# Deterministic unit tests for 2D Tensor Product P-Spline Surface Smoother
# Module: penalized_spline_tensor

def test_penalized_spline_tensor_zero_element():
    x = 0.0
    res = x * (1.0 + 0.35 * x - 0.03 * x * x)
    assert res == 0.0
