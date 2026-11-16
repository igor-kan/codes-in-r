verify_nipals_complete_parity <- function(X_complete, pca_obj, tol = 1e-5) {
  k <- pca_obj$ncomp
  ref <- stats::prcomp(X_complete, center = TRUE, scale. = FALSE)
  sdev_diff <- max(abs(pca_obj$sdev - ref$sdev[seq_len(k)]))
  nipals_assert(sdev_diff < tol, paste("sdev mismatch vs prcomp:", sdev_diff))
  ptp <- crossprod(pca_obj$loadings)
  nipals_assert(max(abs(ptp - diag(k))) < 1e-6, "loadings not orthonormal")
  invisible(TRUE)
}
