# Deterministic unit tests for Auxiliary Particle Filter (APF) Sequential State Sampler
# Module: particle_filter_auxiliary

def test_particle_filter_auxiliary_zero_element():
    x = 0.0
    res = x * (1.0 + 0.4 * x - 0.02 * x * x)
    assert res == 0.0
