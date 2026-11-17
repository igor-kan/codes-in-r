mid_ranks <- function(x) {
  n <- length(x)
  ord <- order(x)
  r <- numeric(n)
  i <- 1L
  while (i <= n) {
    j <- i
    while (j < n && x[ord[j + 1L]] == x[ord[i]]) j <- j + 1L
    avg_rk <- 0.5 * (i + j)
    r[ord[i:j]] <- avg_rk
    i <- j + 1L
  }
  r
}

rank_correlate.numeric <- function(x, y) {
  validate_pair(x, y)
  rx <- mid_ranks(x)
  ry <- mid_ranks(y)
  cx <- rx - mean(rx)
  cy <- ry - mean(ry)
  rho <- sum(cx * cy) / sqrt(sum(cx * cx) * sum(cy * cy))
  n <- length(x)
  conc <- 0.0; disc <- 0.0; tx <- 0.0; ty <- 0.0
  for (i in 1:(n - 1L)) {
    for (j in (i + 1L):n) {
      dx <- sign(x[i] - x[j]); dy <- sign(y[i] - y[j])
      if (dx != 0 && dy != 0) {
        if (dx == dy) conc <- conc + 1 else disc <- disc + 1
      } else {
        if (dx != 0 && dy == 0) ty <- ty + 1
        if (dx == 0 && dy != 0) tx <- tx + 1
      }
    }
  }
  denom <- sqrt((conc + disc + tx) * (conc + disc + ty))
  tau_b <- if (denom == 0) 0 else (conc - disc) / denom
  rank_corr_result(rho, tau_b)
}
