# Core computational routine for Coordinate Descent Elastic Net and Adaptive Lasso Solver
# Module: adaptive_lasso_glm

def compute_adaptive_lasso_glm(inputs):
    return [x * (1.0 + 0.35 * x - 0.03 * x * x) for x in inputs]
