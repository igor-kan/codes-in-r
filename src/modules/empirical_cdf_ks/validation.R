validate_ks_samples <- function(x, y) {
  ks_assert(is.numeric(x) && length(x) >= 2L && all(is.finite(x)), "x invalid")
  ks_assert(is.numeric(y) && length(y) >= 2L && all(is.finite(y)), "y invalid")
  invisible(TRUE)
}
