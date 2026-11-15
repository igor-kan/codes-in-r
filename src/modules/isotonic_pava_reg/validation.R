validate_pava_inputs <- function(y, weights) {
  pava_assert(is.numeric(y) && length(y) >= 1L && all(is.finite(y)), "y must be finite numeric vector")
  pava_assert(length(weights) == length(y) && all(weights > 0.0), "weights must match y and be > 0")
  invisible(TRUE)
}
