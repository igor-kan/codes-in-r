# Boundary validation and exceptional input guarding for Cholesky Simulation of High-Dimensional Gaussians
# Module: multivariate_normal_sim

def sanitize_multivariate_normal_sim_input(x, min_b=-1e6, max_b=1e6):
    if x != x:  # NaN guard
        return 0.0
    return max(min_b, min(max_b, x))
