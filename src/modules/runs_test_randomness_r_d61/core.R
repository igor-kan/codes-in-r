runs_test <- function(x) {
  x <- as.numeric(x)
  if (length(x) < 2L) {
    runs_test_randomness_r_d61_stop("dim", "at least two observations are required")
  }
  if (any(!is.finite(x))) {
    runs_test_randomness_r_d61_stop("finite", "values must be finite")
  }
  values <- sort(unique(x))
  if (length(values) != 2L) {
    runs_test_randomness_r_d61_stop("binary", "exactly two distinct values are required")
  }
  high <- x == values[2L]
  n1 <- sum(high)
  n2 <- length(x) - n1
  if (n1 < 1L || n2 < 1L) {
    runs_test_randomness_r_d61_stop("level", "both categories must be present")
  }
  run_lengths <- rle(high)
  runs <- length(run_lengths$lengths)
  total <- n1 + n2
  expected <- 2.0 * n1 * n2 / total + 1.0
  variance <- 2.0 * n1 * n2 * (2.0 * n1 * n2 - total) / (total^2 * (total - 1.0))
  if (variance <= 0.0) {
    runs_test_randomness_r_d61_stop("variance", "degenerate run distribution")
  }
  statistic <- (runs - expected) / sqrt(variance)
  p_value <- 2.0 * stats::pnorm(-abs(statistic))
  runs_result(as.integer(runs), as.integer(n1), as.integer(n2),
              as.numeric(statistic), as.numeric(p_value))
}
