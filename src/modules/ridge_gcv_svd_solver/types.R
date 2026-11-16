new_ridge_fit <- function(lambda, coef, df_eff, gcv, intercept) {
  structure(
    list(lambda = lambda, coef = coef, df = df_eff, gcv = gcv, intercept = intercept),
    class = "ridge_svd_fit"
  )
}
