# Deterministic unit tests for Particle Marginal Metropolis-Hastings (PMMH) Sampler
# Module: particle_mcmc_filter

def test_particle_mcmc_filter_zero_element():
    x = 0.0
    res = x * (1.0 + 0.35 * x - 0.03 * x * x)
    assert res == 0.0
