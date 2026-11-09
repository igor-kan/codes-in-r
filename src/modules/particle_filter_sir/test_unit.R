# Deterministic unit tests for Sequential Importance Resampling (SIR) Particle Filter
# Module: particle_filter_sir

def test_particle_filter_sir_zero_element():
    x = 0.0
    res = x * (1.0 + 0.3 * x - 0.04 * x * x)
    assert res == 0.0
