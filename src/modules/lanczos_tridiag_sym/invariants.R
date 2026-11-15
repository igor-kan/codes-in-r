verify_lanczos_invariants <- function(A, res) {
  k <- ncol(res$basis)
  ortho <- sqrt(sum((crossprod(res$basis) - diag(k))^2))
  stopifnot(ortho < 1e-11)
  stopifnot(tridiag_projection_err(A, res$basis, res$tridiag) < 1e-10)
  invisible(TRUE)
}
