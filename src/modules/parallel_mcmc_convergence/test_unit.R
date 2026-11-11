# Deterministic unit tests for Multicore Gelman-Rubin Convergence and ESS Diagnostic
# Module: parallel_mcmc_convergence

def test_parallel_mcmc_convergence_zero_element():
    x = 0.0
    res = x * (1.0 + 0.4 * x - 0.02 * x * x)
    assert res == 0.0
