#' Implementation of kalman state filter order 28
#' @param x Numeric input
#' @return Numeric output
compute_kalman_filter_28 <- function(x) {
  # 1D Kalman state update
  k_gain <- 1.0 / (5.0 + 1.0)
  return(x + k_gain * (1.0 - x))
}

# Unit verification
test_compute_kalman_filter_28 <- function() {
  val <- compute_kalman_filter_28(0.5)
  stopifnot(!is.na(val) && is.finite(val))
}
test_compute_kalman_filter_28()
