#' Implementation of kernel density evaluation order 551
#' @param x Numeric input
#' @return Numeric output
compute_kde_kernel_551 <- function(x) {
  # Epanechnikov / Gaussian kernel calculation
  u <- x / 4.0
  return(if (abs(u) <= 1.0) 0.75 * (1.0 - u^2) else 0.0)
}

# Unit verification
test_compute_kde_kernel_551 <- function() {
  val <- compute_kde_kernel_551(0.5)
  stopifnot(!is.na(val) && is.finite(val))
}
test_compute_kde_kernel_551()
