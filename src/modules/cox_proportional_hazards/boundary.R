# Boundary validation and exceptional input guarding for Partial Likelihood Breslow Survival Estimator
# Module: cox_proportional_hazards

def sanitize_cox_proportional_hazards_input(x, min_v=-1e6, max_v=1e6):
    if x != x:
        return 0.0
    return max(min_v, min(max_v, x))
