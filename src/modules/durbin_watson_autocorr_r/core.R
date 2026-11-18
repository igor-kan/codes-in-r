durbin_watson_ols <- function(X, y) {
  e <- qr.resid(qr(X), y)
  n <- length(e)
  diff_e <- e[2:n] - e[1:(n - 1L)]
  d <- sum(diff_e * diff_e) / sum(e * e)
  rho1 <- sum(e[2:n] * e[1:(n - 1L)]) / sum(e * e)
  dw_res(d, rho1)
}
