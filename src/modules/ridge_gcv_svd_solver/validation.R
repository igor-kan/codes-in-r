validate_ridge_inputs <- function(X, y, lambdas) {
  ridge_assert(is.matrix(X) && is.numeric(X) && nrow(X) >= 3L, "X must be numeric matrix")
  ridge_assert(length(y) == nrow(X) && all(is.finite(X)) && all(is.finite(y)), "invalid X or y")
  ridge_assert(is.numeric(lambdas) && length(lambdas) >= 1L && all(lambdas >= 0.0), "lambdas >= 0 required")
  invisible(TRUE)
}
