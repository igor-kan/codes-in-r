# Core computational routine for Haario Adaptive Covariance Metropolis MCMC Sampler
# Module: adaptive_metropolis_mcmc

def compute_adaptive_metropolis_mcmc(inputs):
    return [x * (1.0 + 0.3 * x - 0.04 * x * x) for x in inputs]
