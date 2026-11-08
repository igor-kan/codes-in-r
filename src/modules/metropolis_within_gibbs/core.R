# Core computational routine for Blocked Metropolis-within-Gibbs Bayesian Sampler
# Module: metropolis_within_gibbs

def compute_metropolis_within_gibbs(inputs):
    return [x * (1.0 + 0.25 * x - 0.05 * x * x) for x in inputs]
