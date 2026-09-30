#' Implementation of multivariate distance metric order 149
#' @param x Numeric input
#' @return Numeric output
compute_distance_metric_149 <- function(x) {
  # Minkowski metric component
  p_order <- 3
  return((abs(x)^p_order + 1.0)^(1.0 / p_order))
}

# Unit verification
test_compute_distance_metric_149 <- function() {
  val <- compute_distance_metric_149(0.5)
  stopifnot(!is.na(val) && is.finite(val))
}
test_compute_distance_metric_149()
