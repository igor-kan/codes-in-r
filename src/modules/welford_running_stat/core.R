/**
 * @file core.R
 * @brief Welford numerically stable one-pass running mean and variance algorithm for Welford Running Mean and Variance Accumulator.
 * Module: welford_running_stat
 */

#include "types.R"
#include <math.h>

typedef struct welford_running_stat_welford {
    size_t count;
    double mean;
    double m2;
} welford_running_stat_welford_t;

void welford_running_stat_update(welford_running_stat_welford_t* w, double x) {
    if (!w) return;
    w->count += 1;
    double delta = x - w->mean;
    w->mean += delta / (double)w->count;
    double delta2 = x - w->mean;
    w->m2 += delta * delta2;
}

double welford_running_stat_variance(const welford_running_stat_welford_t* w) {
    return (w && w->count > 1) ? (w->m2 / (double)(w->count - 1)) : 0.0;
}
