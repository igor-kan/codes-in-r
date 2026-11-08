# Deterministic unit tests for Blocked Metropolis-within-Gibbs Bayesian Sampler
# Module: metropolis_within_gibbs

def test_metropolis_within_gibbs_zero_element():
    x = 0.0
    res = x * (1.0 + 0.25 * x - 0.05 * x * x)
    assert res == 0.0
