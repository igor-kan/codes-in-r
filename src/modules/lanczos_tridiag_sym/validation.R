validate_lanczos_inputs <- function(A, k) {
  lcz_assert(is.matrix(A) && nrow(A) == ncol(A) && all(is.finite(A)), "A must be finite square matrix")
  lcz_assert(max(abs(A - t(A))) < 1e-11, "A must be symmetric")
  lcz_assert(k >= 1L, "Krylov rank k must be >= 1")
  invisible(TRUE)
}
