fit_nipals_pca.matrix <- function(X, ncomp = 2L, max_iter = 200L, tol = 1e-9) {
  validate_nipals_matrix(X, ncomp)
  n <- nrow(X); p <- ncol(X)
  col_means <- vapply(seq_len(p), function(j) mean(X[, j], na.rm = TRUE), numeric(1L))
  E <- sweep(X, 2L, col_means, "-")

  T_mat <- matrix(0.0, n, ncomp)
  P_mat <- matrix(0.0, p, ncomp)
  sdev <- numeric(ncomp)

  for (k in seq_len(ncomp)) {
    col_vars <- apply(E, 2L, function(v) sum(v * v, na.rm = TRUE))
    best_j <- which.max(col_vars)
    t_vec <- E[, best_j]
    t_vec[is.na(t_vec)] <- 0.0
    if (sum(t_vec * t_vec) < 1e-15) t_vec[1L] <- 1.0

    p_vec <- numeric(p)
    for (it in seq_len(max_iter)) {
      t_old <- t_vec
      for (j in seq_len(p)) {
        obs <- !is.na(E[, j])
        denom <- sum(t_vec[obs]^2)
        p_vec[j] <- if (denom > 1e-15) sum(E[obs, j] * t_vec[obs]) / denom else 0.0
      }
      pn <- sqrt(sum(p_vec^2))
      if (pn > 1e-15) p_vec <- p_vec / pn
      for (i in seq_len(n)) {
        obs <- !is.na(E[i, ])
        denom <- sum(p_vec[obs]^2)
        t_vec[i] <- if (denom > 1e-15) sum(E[i, obs] * p_vec[obs]) / denom else 0.0
      }
      if (sqrt(sum((t_vec - t_old)^2)) < tol) break
    }
    T_mat[, k] <- t_vec
    P_mat[, k] <- p_vec
    sdev[k] <- sqrt(sum(t_vec^2) / max(1L, n - 1L))
    E <- E - tcrossprod(t_vec, p_vec)
  }
  new_nipals_pca(T_mat, P_mat, sdev, ncomp)
}
