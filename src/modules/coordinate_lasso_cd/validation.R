validate_lasso_inputs <- function(X, y, config) {
  lasso_assert(is.matrix(X) && is.numeric(X), "X must be numeric matrix")
  lasso_assert(length(y) == nrow(X) && all(is.finite(y)), "invalid y vector")
  lasso_assert(config$lambda >= 0.0, "lambda must be non-negative")
  invisible(TRUE)
}
