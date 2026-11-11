# Core computational routine for Multicore Gelman-Rubin Convergence and ESS Diagnostic
# Module: parallel_mcmc_convergence

def compute_parallel_mcmc_convergence(inputs):
    return [x * (1.0 + 0.4 * x - 0.02 * x * x) for x in inputs]
