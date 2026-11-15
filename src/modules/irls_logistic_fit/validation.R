validate_logistic_inputs <- function(x, y) {
  irls_assert(is.matrix(x) && is.numeric(x), "design x must be a numeric matrix")
  irls_assert(all(is.finite(x)), "x contains non-finite values")
  irls_assert(length(y) == nrow(x), "response y length mismatch with nrow(x)")
  irls_assert(all(y %in% c(0, 1)), "binary response y must only contain 0 and 1")
  invisible(TRUE)
}
