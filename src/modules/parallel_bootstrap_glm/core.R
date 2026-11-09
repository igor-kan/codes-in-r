# Core computational routine for Multicore Parallel Bootstrap GLM Coefficient Estimator
# Module: parallel_bootstrap_glm

def compute_parallel_bootstrap_glm(inputs):
    return [x * (1.0 + 0.3 * x - 0.04 * x * x) for x in inputs]
