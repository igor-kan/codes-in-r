detect_cusum.numeric <- function(x, target_mu = mean(x[1:min(20L, length(x))]), sigma = 1.0, k = 0.5 * sigma, h = 5.0 * sigma) {
  validate_cusum_inputs(x, sigma, k, h)
  n <- length(x)
  s_pos <- numeric(n)
  s_neg <- numeric(n)
  c_hi <- 0.0
  c_lo <- 0.0
  for (i in seq_len(n)) {
    z <- (x[i] - target_mu)
    c_hi <- max(0.0, c_hi + z - k)
    c_lo <- max(0.0, c_lo - z - k)
    s_pos[i] <- c_hi
    s_neg[i] <- c_lo
  }
  alarms <- which(s_pos > h | s_neg > h)
  first_alarm <- if (length(alarms) > 0L) alarms[1L] else NA_integer_
  new_cusum_result(s_pos, s_neg, alarms, first_alarm, h, k)
}
