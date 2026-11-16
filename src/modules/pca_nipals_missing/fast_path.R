reconstruct_from_nipals <- function(pca_obj, col_means = NULL) {
  approx <- tcrossprod(pca_obj$scores, pca_obj$loadings)
  if (!is.null(col_means)) approx <- sweep(approx, 2L, col_means, "+")
  approx
}
