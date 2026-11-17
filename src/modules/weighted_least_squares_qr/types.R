wls_fit <- function(beta, se_hc0, resid) {
  obj <- list(beta = beta, se_hc0 = se_hc0, resid = resid)
  structure(obj, module = 'weighted_least_squares_qr')
}
