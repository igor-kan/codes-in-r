# Core computational routine for Auxiliary Particle Filter (APF) Sequential State Sampler
# Module: particle_filter_auxiliary

def compute_particle_filter_auxiliary(inputs):
    return [x * (1.0 + 0.4 * x - 0.02 * x * x) for x in inputs]
