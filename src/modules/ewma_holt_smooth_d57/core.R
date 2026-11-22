ewma_smooth <- function(x, alpha = 0.3) {
  if (alpha <= 0.0 || alpha > 1.0) ewma_holt_smooth_d57_stop("param", "alpha in (0, 1]")
  n <- length(x)
  out <- numeric(n)
  out[1] <- x[1]
  if (n >= 2L) {
    for (i in 2:n) out[i] <- alpha * x[i] + (1.0 - alpha) * out[i - 1L]
  }
  out
}
