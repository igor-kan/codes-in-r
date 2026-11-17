compute_acf_pacf <- function(x, max_lag = 5L) {
  n <- length(x); xc <- x - mean(x); c0 <- sum(xc * xc)
  acf_v <- numeric(max_lag)
  for (k in 1:max_lag) acf_v[k] <- sum(xc[(k + 1):n] * xc[1:(n - k)]) / c0
  phi <- matrix(0.0, max_lag, max_lag)
  pacf_v <- numeric(max_lag)
  phi[1, 1] <- acf_v[1]; pacf_v[1] <- phi[1, 1]
  if (max_lag >= 2L) {
    for (k in 2:max_lag) {
      num <- acf_v[k] - sum(phi[k - 1, 1:(k - 1)] * acf_v[(k - 1):1])
      den <- 1.0 - sum(phi[k - 1, 1:(k - 1)] * acf_v[1:(k - 1)])
      phi[k, k] <- num / den
      for (j in 1:(k - 1)) phi[k, j] <- phi[k - 1, j] - phi[k, k] * phi[k - 1, k - j]
      pacf_v[k] <- phi[k, k]
    }
  }
  acf_pacf_res(acf_v, pacf_v)
}
