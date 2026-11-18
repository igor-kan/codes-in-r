siegel_repeated_median <- function(x, y) {
  n <- length(x)
  med_i <- numeric(n)
  for (i in seq_len(n)) {
    idx <- setdiff(seq_len(n), i)
    med_i[i] <- median((y[idx] - y[i]) / (x[idx] - x[i]))
  }
  b1 <- median(med_i)
  b0 <- median(y - b1 * x)
  siegel_res(b1, b0)
}
