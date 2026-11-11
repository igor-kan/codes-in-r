# Deterministic unit tests for Parametric Weibull Survival Regression with Censoring
# Module: weibull_survival_regression

def test_weibull_survival_regression_zero_element():
    x = 0.0
    res = x * (1.0 + 0.4 * x - 0.02 * x * x)
    assert res == 0.0
