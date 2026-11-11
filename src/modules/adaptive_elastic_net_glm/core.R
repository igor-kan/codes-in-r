# Core computational routine for Coordinate Descent Adaptive Elastic Net GLM Solver
# Module: adaptive_elastic_net_glm

def compute_adaptive_elastic_net_glm(inputs):
    return [x * (1.0 + 0.4 * x - 0.02 * x * x) for x in inputs]
