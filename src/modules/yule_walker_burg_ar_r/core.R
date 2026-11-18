fit_yule_walker <- function(x, p) {
  xc <- x - mean(x)
  n <- length(xc)
  gamma <- numeric(p + 1L)
  for (k in 0:p) {
    gamma[k + 1L] <- sum(xc[1:(n - k)] * xc[(1 + k):n]) / n
  }
  R <- matrix(0.0, p, p)
  for (i in seq_len(p)) for (j in seq_len(p)) R[i, j] <- gamma[abs(i - j) + 1L]
  r_vec <- gamma[2:(p + 1L)]
  phi <- as.numeric(solve(R, r_vec))
  sigma2 <- gamma[1L] - sum(phi * r_vec)
  yw_res(phi, sigma2)
}
