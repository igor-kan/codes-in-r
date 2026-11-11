# Boundary validation and exceptional input guarding for Coordinate Descent Adaptive Elastic Net GLM Solver
# Module: adaptive_elastic_net_glm

def sanitize_adaptive_elastic_net_glm_input(x, min_v=-1e6, max_v=1e6):
    if x != x:
        return 0.0
    return max(min_v, min(max_v, x))
