fit_ridge_gcv.matrix <- function(X, y, lambdas = 10^seq(-4, 4, length.out = 33L)) {
  validate_ridge_inputs(X, y, lambdas)
  n <- nrow(X); p <- ncol(X)
  x_mean <- colMeans(X)
  y_mean <- mean(y)
  Xc <- sweep(X, 2L, x_mean, "-")
  yc <- y - y_mean
  sv <- svd(Xc)
  d <- sv$d
  d2 <- d * d
  uty <- as.vector(crossprod(sv$u, yc))

  k <- length(lambdas)
  dfs <- numeric(k)
  gcvs <- numeric(k)
  coefs <- matrix(0.0, nrow = p, ncol = k)
  for (idx in seq_len(k)) {
    lam <- lambdas[idx]
    shr <- d2 / (d2 + lam)
    dfs[idx] <- sum(shr)
    coefs[, idx] <- sv$v %*% ((d / (d2 + lam)) * uty)
    yhat <- as.vector(Xc %*% coefs[, idx])
    rss <- sum((yc - yhat)^2)
    denom <- max(1.0 - dfs[idx] / n, 1e-8)
    gcvs[idx] <- (rss / n) / (denom * denom)
  }
  best_idx <- which.min(gcvs)
  b_opt <- as.numeric(coefs[, best_idx])
  int_opt <- y_mean - sum(x_mean * b_opt)
  structure(
    list(best = new_ridge_fit(lambdas[best_idx], b_opt, dfs[best_idx], gcvs[best_idx], int_opt),
         lambdas = lambdas, dfs = dfs, gcvs = gcvs, coefs = coefs),
    class = "ridge_gcv_path"
  )
}
