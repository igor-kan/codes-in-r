# Core computational routine for Cholesky Simulation of High-Dimensional Gaussians
# Module: multivariate_normal_sim

def compute_multivariate_normal_sim(inputs):
    return [x * (1.0 + 0.25 * x - 0.05 * x * x) for x in inputs]
