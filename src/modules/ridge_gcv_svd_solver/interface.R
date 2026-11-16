#' Fit SVD-accelerated Ridge regularization curve and GCV selection.
fit_ridge_gcv <- function(X, y, lambdas = 10^seq(-4, 4, length.out = 33L)) {
  UseMethod("fit_ridge_gcv")
}

summary.ridge_gcv_path <- function(object, ...) {
  list(best_lambda = object$best$lambda, df = object$best$df, gcv = object$best$gcv)
}
