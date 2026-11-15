mgs_decompose.matrix <- function(A, reorth = TRUE) {
  validate_mgs_matrix(A)
  m <- nrow(A)
  n <- ncol(A)
  Q <- A
  R <- matrix(0.0, nrow = n, ncol = n)

  for (j in seq_len(n)) {
    v <- Q[, j]
    if (j > 1L) {
      for (i in seq_len(j - 1L)) {
        r_ij <- sum(Q[, i] * v)
        R[i, j] <- R[i, j] + r_ij
        v <- v - r_ij * Q[, i]
      }
      if (reorth) {
        for (i in seq_len(j - 1L)) {
          corr <- sum(Q[, i] * v)
          R[i, j] <- R[i, j] + corr
          v <- v - corr * Q[, i]
        }
      }
    }
    norm_v <- sqrt(sum(v * v))
    mgs_assert(norm_v > 1e-13, paste("rank deficiency at column", j))
    R[j, j] <- norm_v
    Q[, j] <- v / norm_v
  }
  new_mgs_qr(Q = Q, R = R)
}

mgs_solve.mgs_qr <- function(qr_obj, b) {
  backsolve(qr_obj$R, as.vector(crossprod(qr_obj$Q, b)))
}
