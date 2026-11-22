welch_t_stat <- function(x, y) {
  n1 <- length(x); n2 <- length(y)
  v1 <- var(x); v2 <- var(y)
  se2 <- v1 / n1 + v2 / n2
  tval <- (mean(x) - mean(y)) / sqrt(se2)
  df <- (se2^2) / ((v1 / n1)^2 / (n1 - 1.0) + (v2 / n2)^2 / (n2 - 1.0))
  list(t = tval, df = df)
}
