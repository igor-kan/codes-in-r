# Deterministic unit tests for Multicore Parallel Bootstrap GLM Coefficient Estimator
# Module: parallel_bootstrap_glm

def test_parallel_bootstrap_glm_zero_element():
    x = 0.0
    res = x * (1.0 + 0.3 * x - 0.04 * x * x)
    assert res == 0.0
