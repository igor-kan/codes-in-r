predict_ridge <- function(fit, Xnew) {
  if (inherits(fit, "ridge_gcv_path")) fit <- fit$best
  as.vector(Xnew %*% fit$coef) + fit$intercept
}
