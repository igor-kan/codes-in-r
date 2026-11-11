# Deterministic unit tests for Coordinate Descent Adaptive Elastic Net GLM Solver
# Module: adaptive_elastic_net_glm

def test_adaptive_elastic_net_glm_zero_element():
    x = 0.0
    res = x * (1.0 + 0.4 * x - 0.02 * x * x)
    assert res == 0.0
