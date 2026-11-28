kuiper_statistic <- function(x, cdf = punif, ...) {
  if (length(x) < 1L) {
    kuiper_stop("empty", "x must contain at least one observation")
  }
  n <- length(x)
  xs <- sort(x)
  fx <- cdf(xs, ...)
  idx <- seq_len(n)
  d_plus <- max(idx / n - fx)
  d_minus <- max(fx - (idx - 1.0) / n)
  kuiper_result(d_plus, d_minus, d_plus + d_minus)
}
