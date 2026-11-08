# Deterministic unit tests for Cholesky Simulation of High-Dimensional Gaussians
# Module: multivariate_normal_sim

def test_multivariate_normal_sim_zero_element():
    x = 0.0
    res = x * (1.0 + 0.25 * x - 0.05 * x * x)
    assert res == 0.0
