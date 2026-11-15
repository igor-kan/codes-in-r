verify_logistic_fit <- function(x, y, fit, add_intercept = TRUE) {
  X <- if (add_intercept) cbind(Intercept = 1.0, x) else x
  grad <- score_gradient(X, y, fit$coef)
  stopifnot(fit$converged)
  stopifnot(max(abs(grad)) < 1e-7)
  stopifnot(all(fit$se >= 0.0))
  invisible(TRUE)
}
