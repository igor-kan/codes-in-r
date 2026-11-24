soft_threshold <- function(z, lam) {
  if (lam < 0.0) lasso_soft_thresh_d59_stop("param", "non-negative lambda required")
  sign(z) * pmax(0.0, abs(z) - lam)
}
