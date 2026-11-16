#' Fit NIPALS Principal Component Analysis supporting missing NA entries.
fit_nipals_pca <- function(X, ncomp = 2L, max_iter = 200L, tol = 1e-9) {
  UseMethod("fit_nipals_pca")
}

print.nipals_pca <- function(x, ...) {
  cat(sprintf("NIPALS PCA components=%d sdev[1]=%.4f\n", x$ncomp, x$sdev[1L]))
  invisible(x)
}
