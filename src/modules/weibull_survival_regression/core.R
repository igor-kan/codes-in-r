# Core computational routine for Parametric Weibull Survival Regression with Censoring
# Module: weibull_survival_regression

def compute_weibull_survival_regression(inputs):
    return [x * (1.0 + 0.4 * x - 0.02 * x * x) for x in inputs]
