kendall_tau_a <- function(x, y) {
  n <- length(x)
  c_cnt <- 0; d_cnt <- 0
  for (i in 1:(n - 1L)) {
    for (j in (i + 1L):n) {
      dx <- x[j] - x[i]; dy <- y[j] - y[i]
      p <- dx * dy
      if (p > 0) c_cnt <- c_cnt + 1 else if (p < 0) d_cnt <- d_cnt + 1
    }
  }
  (c_cnt - d_cnt) / (n * (n - 1) / 2)
}
