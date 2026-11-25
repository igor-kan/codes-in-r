kalman_filter_1d <- function(z, q = 0.05, r = 0.5, x0 = 0.0, p0 = 1.0) {
  n <- length(z)
  means <- numeric(n)
  vars <- numeric(n)
  gains <- numeric(n)
  x <- x0
  p <- p0
  for (t in seq_len(n)) {
    p_pred <- p + q
    k <- p_pred / (p_pred + r)
    x <- x + k * (z[t] - x)
    p <- (1.0 - k) * p_pred
    means[t] <- x
    vars[t] <- p
    gains[t] <- k
  }
  kalman_trace(means = means, vars = vars, gains = gains)
}
