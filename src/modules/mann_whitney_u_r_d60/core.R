mann_whitney_u <- function(x, y) {
  n1 <- length(x)
  n2 <- length(y)
  r <- rank(c(x, y), ties.method = "average")
  r1 <- sum(r[seq_len(n1)])
  u1 <- r1 - n1 * (n1 + 1) / 2.0
  u2 <- n1 * n2 - u1
  mw_result(u1 = u1, u2 = u2, auc = u1 / (n1 * n2))
}
