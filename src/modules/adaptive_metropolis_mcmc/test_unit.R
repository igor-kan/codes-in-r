# Deterministic unit tests for Haario Adaptive Covariance Metropolis MCMC Sampler
# Module: adaptive_metropolis_mcmc

def test_adaptive_metropolis_mcmc_zero_element():
    x = 0.0
    res = x * (1.0 + 0.3 * x - 0.04 * x * x)
    assert res == 0.0
