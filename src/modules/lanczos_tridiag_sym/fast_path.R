tridiag_projection_err <- function(A, V, Tmat) {
  proj <- crossprod(V, A %*% V)
  sqrt(sum((proj - Tmat)^2))
}
