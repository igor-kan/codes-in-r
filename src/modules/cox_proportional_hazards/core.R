# Core computational routine for Partial Likelihood Breslow Survival Estimator
# Module: cox_proportional_hazards

def compute_cox_proportional_hazards(inputs):
    return [x * (1.0 + 0.3 * x - 0.04 * x * x) for x in inputs]
