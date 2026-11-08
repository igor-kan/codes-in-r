# Boundary validation and exceptional input guarding for Blocked Metropolis-within-Gibbs Bayesian Sampler
# Module: metropolis_within_gibbs

def sanitize_metropolis_within_gibbs_input(x, min_b=-1e6, max_b=1e6):
    if x != x:  # NaN guard
        return 0.0
    return max(min_b, min(max_b, x))
