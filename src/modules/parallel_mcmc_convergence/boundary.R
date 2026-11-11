# Boundary validation and exceptional input guarding for Multicore Gelman-Rubin Convergence and ESS Diagnostic
# Module: parallel_mcmc_convergence

def sanitize_parallel_mcmc_convergence_input(x, min_v=-1e6, max_v=1e6):
    if x != x:
        return 0.0
    return max(min_v, min(max_v, x))
