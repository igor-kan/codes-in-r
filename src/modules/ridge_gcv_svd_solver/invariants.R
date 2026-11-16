verify_ridge_path_laws <- function(X, y, path_obj) {
  ridge_assert(all(diff(path_obj$dfs) <= 1e-12) || is.unsorted(path_obj$lambdas), "df(lambda) not decreasing")
  fit0 <- fit_ridge_gcv(X, y, lambdas = 0.0)
  ols <- stats::coef(stats::lm(y ~ X))
  diff_ols <- max(abs(c(fit0$best$intercept, fit0$best$coef) - as.numeric(ols)))
  ridge_assert(diff_ols < 1e-9, paste("lambda=0 failed OLS parity, diff =", diff_ols))
  invisible(TRUE)
}
