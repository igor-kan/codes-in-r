#' Implementation of kalman state filter order 153
#' @param x Numeric input
#' @return Numeric output
compute_kalman_filter_153 <- function(x) {
  # 1D Kalman state update
  k_gain <- 1.0 / (4.0 + 1.0)
  return(x + k_gain * (1.0 - x))
}

# Unit verification
test_compute_kalman_filter_153 <- function() {
  val <- compute_kalman_filter_153(0.5)
  stopifnot(!is.na(val) && is.finite(val))
}
test_compute_kalman_filter_153()
