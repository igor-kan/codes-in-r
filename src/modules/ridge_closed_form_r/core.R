ridge_svd_fit <- function(X, y, lambda) {
  sv <- svd(X)
  d <- sv$d
  w <- d / (d * d + lambda)
  beta <- as.numeric(sv$v %*% (w * crossprod(sv$u, y)))
  df_eff <- sum((d * d) / (d * d + lambda))
  ridge_res(beta, df_eff)
}
