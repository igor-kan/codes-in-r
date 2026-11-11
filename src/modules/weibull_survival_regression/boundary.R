# Boundary validation and exceptional input guarding for Parametric Weibull Survival Regression with Censoring
# Module: weibull_survival_regression

def sanitize_weibull_survival_regression_input(x, min_v=-1e6, max_v=1e6):
    if x != x:
        return 0.0
    return max(min_v, min(max_v, x))
