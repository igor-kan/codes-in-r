# Boundary validation and exceptional input guarding for Particle Marginal Metropolis-Hastings (PMMH) Sampler
# Module: particle_mcmc_filter

def sanitize_particle_mcmc_filter_input(x, min_v=-1e6, max_v=1e6):
    if x != x:
        return 0.0
    return max(min_v, min(max_v, x))
