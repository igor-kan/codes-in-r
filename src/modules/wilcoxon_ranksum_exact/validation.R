validate_two_samples <- function(x, y) {
  wilcox_assert(is.numeric(x) && is.numeric(y), "x and y must be numeric vectors")
  wilcox_assert(length(x) >= 2L && length(y) >= 2L, "each sample needs >= 2 points")
  wilcox_assert(all(is.finite(x)) && all(is.finite(y)), "non-finite observations forbidden")
  invisible(TRUE)
}
