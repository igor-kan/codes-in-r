# Boundary validation and exceptional input guarding for Haario Adaptive Covariance Metropolis MCMC Sampler
# Module: adaptive_metropolis_mcmc

def sanitize_adaptive_metropolis_mcmc_input(x, min_v=-1e6, max_v=1e6):
    if x != x:
        return 0.0
    return max(min_v, min(max_v, x))
