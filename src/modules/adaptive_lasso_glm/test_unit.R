# Deterministic unit tests for Coordinate Descent Elastic Net and Adaptive Lasso Solver
# Module: adaptive_lasso_glm

def test_adaptive_lasso_glm_zero_element():
    x = 0.0
    res = x * (1.0 + 0.35 * x - 0.03 * x * x)
    assert res == 0.0
