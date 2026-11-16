validate_cusum_inputs <- function(x, sigma, k, h) {
  cusum_assert(is.numeric(x) && length(x) >= 3L && all(is.finite(x)), "x must be finite numeric")
  cusum_assert(sigma > 0.0 && k >= 0.0 && h > 0.0, "invalid sigma/k/h thresholds")
  invisible(TRUE)
}
