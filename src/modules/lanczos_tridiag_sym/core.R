lanczos_tridiagonalize.matrix <- function(A, k, q0 = NULL) {
  validate_lanczos_inputs(A, k)
  n <- nrow(A)
  m <- min(as.integer(k), n)
  V <- matrix(0.0, nrow = n, ncol = m)
  Tmat <- matrix(0.0, nrow = m, ncol = m)

  q <- if (is.null(q0)) cos(seq_len(n)) else as.numeric(q0)
  q <- q / sqrt(sum(q * q))
  V[, 1L] <- q
  beta_prev <- 0.0

  for (j in seq_len(m)) {
    w <- as.vector(A %*% V[, j])
    if (j > 1L) w <- w - beta_prev * V[, j - 1L]
    alpha <- sum(V[, j] * w)
    Tmat[j, j] <- alpha
    w <- w - alpha * V[, j]
    for (pass in 1L:2L) {
      if (j >= 1L) {
        vj <- V[, seq_len(j), drop = FALSE]
        w <- w - as.vector(vj %*% crossprod(vj, w))
      }
    }
    if (j < m) {
      beta <- sqrt(sum(w * w))
      Tmat[j, j + 1L] <- beta
      Tmat[j + 1L, j] <- beta
      if (beta < 1e-13) {
        Tmat <- Tmat[seq_len(j), seq_len(j), drop = FALSE]
        V <- V[, seq_len(j), drop = FALSE]
        break
      }
      V[, j + 1L] <- w / beta
      beta_prev <- beta
    }
  }
  ev <- eigen(Tmat, symmetric = TRUE, only.values = TRUE)$values
  new_lanczos_result(ritz_values = ev, tridiag = Tmat, basis = V)
}
