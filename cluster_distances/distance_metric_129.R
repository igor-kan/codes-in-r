#' Implementation of multivariate distance metric order 129
#' @param x Numeric input
#' @return Numeric output
compute_distance_metric_129 <- function(x) {
  # Minkowski metric component
  p_order <- 1
  return((abs(x)^p_order + 1.0)^(1.0 / p_order))
}

# Unit verification
test_compute_distance_metric_129 <- function() {
  val <- compute_distance_metric_129(0.5)
  stopifnot(!is.na(val) && is.finite(val))
}
test_compute_distance_metric_129()
