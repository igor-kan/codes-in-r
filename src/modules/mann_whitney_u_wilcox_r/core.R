mann_whitney_u <- function(x, y) {
  nx <- length(x); ny <- length(y)
  rks <- rank(c(x, y), ties.method = "average")
  rx <- sum(rks[seq_len(nx)])
  u1 <- rx - nx * (nx + 1) / 2.0
  N <- nx + ny
  ties <- table(c(x, y))
  tie_corr <- sum(ties * ties * ties - ties)
  var_u <- (nx * ny / 12.0) * ((N + 1.0) - tie_corr / (N * (N - 1.0)))
  z <- (u1 - nx * ny / 2.0) / sqrt(var_u)
  mw_res(u1, z)
}
