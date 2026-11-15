validate_mgs_matrix <- function(A) {
  mgs_assert(is.matrix(A) && is.numeric(A), "A must be numeric matrix")
  mgs_assert(nrow(A) >= ncol(A) && ncol(A) >= 1L, "requires tall matrix nrow >= ncol >= 1")
  mgs_assert(all(is.finite(A)), "matrix contains non-finite values")
  invisible(TRUE)
}
