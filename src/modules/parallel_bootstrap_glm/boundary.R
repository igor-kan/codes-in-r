# Boundary validation and exceptional input guarding for Multicore Parallel Bootstrap GLM Coefficient Estimator
# Module: parallel_bootstrap_glm

def sanitize_parallel_bootstrap_glm_input(x, min_v=-1e6, max_v=1e6):
    if x != x:
        return 0.0
    return max(min_v, min(max_v, x))
