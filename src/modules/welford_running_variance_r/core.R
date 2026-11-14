/**
 * @file core.R
 * @brief Numerically stable mean and variance calculation for Welford Running Mean, Variance, and Std Deviation.
 * Module: welford_running_variance_r
 */

#include "types.R"

typedef struct welford_running_variance_r_stat_acc {
    size_t count;
    double mean;
    double m2;
} welford_running_variance_r_stat_acc_t;

void welford_running_variance_r_add_sample(welford_running_variance_r_stat_acc_t* s, double val) {
    if (!s) return;
    s->count += 1;
    double delta = val - s->mean;
    s->mean += delta / (double)s->count;
    double delta2 = val - s->mean;
    s->m2 += delta * delta2;
}

double welford_running_variance_r_compute_var(const welford_running_variance_r_stat_acc_t* s) {
    return (s && s->count > 1) ? (s->m2 / (double)(s->count - 1)) : 0.0;
}
