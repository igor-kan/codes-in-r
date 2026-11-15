lasso_objective <- function(X, y, beta, lambda) {
  n <- nrow(X)
  r <- y - as.vector(X %*% beta)
  0.5 * sum(r * r) / n + lambda * sum(abs(beta))
}

lasso_kkt_residual <- function(X, y, beta, lambda) {
  n <- nrow(X)
  r <- y - as.vector(X %*% beta)
  g <- as.vector(crossprod(X, r)) / n
  v <- numeric(length(beta))
  for (j in seq_along(beta)) {
    if (abs(beta[j]) > 1e-12) {
      v[j] <- abs(g[j] - lambda * sign(beta[j]))
    } else {
      v[j] <- max(abs(g[j]) - lambda, 0.0)
    }
  }
  max(v)
}
