#' Implementation of statistical density order 90
#' @param x Numeric input vector or scalar
#' @return Computed numeric result
compute_distribution_density_90 <- function(x) {
  # Generalized Gamma / Weibull formulation
  shape <- 1
  scale <- 1.5
  return((shape / scale) * (x / scale)^(shape - 1) * exp(-(x / scale)^shape))
}

# Unit verification
test_compute_distribution_density_90 <- function() {
  val <- compute_distribution_density_90(0.5)
  stopifnot(!is.na(val) && is.finite(val))
}
test_compute_distribution_density_90()
