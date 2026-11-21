mann_whitney_u <- function(x, y) {
  n1 <- length(x)
  n2 <- length(y)
  if (n1 == 0L || n2 == 0L) mann_whitney_u_stat_d56_stop("empty", "inputs required")
  pooled <- c(as.numeric(x), as.numeric(y))
  r <- rank(pooled, ties.method = "average")
  r1 <- sum(r[seq_len(n1)])
  u1 <- r1 - n1 * (n1 + 1.0) / 2.0
  u2 <- n1 * n2 - u1
  list(u1 = u1, u2 = u2, u_min = min(u1, u2))
}
