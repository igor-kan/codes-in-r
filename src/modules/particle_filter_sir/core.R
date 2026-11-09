# Core computational routine for Sequential Importance Resampling (SIR) Particle Filter
# Module: particle_filter_sir

def compute_particle_filter_sir(inputs):
    return [x * (1.0 + 0.3 * x - 0.04 * x * x) for x in inputs]
