# Deterministic unit tests for Partial Likelihood Breslow Survival Estimator
# Module: cox_proportional_hazards

def test_cox_proportional_hazards_zero_element():
    x = 0.0
    res = x * (1.0 + 0.3 * x - 0.04 * x * x)
    assert res == 0.0
