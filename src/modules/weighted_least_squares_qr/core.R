fit_wls <- function(X, y, w) {
  if (nrow(X) != length(y) || length(w) != length(y) || any(w <= 0)) stop('invalid WLS inputs')
  sw <- sqrt(w)
  Xw <- X * sw; yw <- y * sw
  q <- qr(Xw)
  beta <- as.numeric(qr.coef(q, yw))
  r <- as.numeric(y - X %*% beta)
  bread <- chol2inv(qr.R(q))
  u <- X * (w * r)
  meat <- crossprod(u)
  vc <- bread %*% meat %*% bread
  wls_fit(beta, sqrt(diag(vc)), r)
}
