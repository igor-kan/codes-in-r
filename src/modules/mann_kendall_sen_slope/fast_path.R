mk_s_fast <- function(x) {
  n <- length(x)
  s <- 0.0
  for (i in seq_len(n - 1L)) {
    s <- s + sum(sign(x[(i + 1L):n] - x[i]))
  }
  s
}
