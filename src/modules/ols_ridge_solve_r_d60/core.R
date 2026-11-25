fit_ridge_l2 <- function(X, y, lambda = 0.0) {
  X <- as.matrix(X)
  p <- ncol(X)
  xtx <- crossprod(X) + diag(lambda, p)
  xty <- crossprod(X, as.numeric(y))
  beta <- as.numeric(solve(xtx, xty))
  resid <- as.numeric(y) - as.numeric(X %*% beta)
  ridge_fit(beta = beta, rss = sum(resid * resid), l2_norm = sqrt(sum(beta * beta)))
}
