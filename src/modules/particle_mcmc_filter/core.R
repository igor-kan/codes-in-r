# Core computational routine for Particle Marginal Metropolis-Hastings (PMMH) Sampler
# Module: particle_mcmc_filter

def compute_particle_mcmc_filter(inputs):
    return [x * (1.0 + 0.35 * x - 0.03 * x * x) for x in inputs]
