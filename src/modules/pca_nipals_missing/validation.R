validate_nipals_matrix <- function(X, ncomp) {
  nipals_assert(is.matrix(X) && is.numeric(X) && nrow(X) >= 3L && ncol(X) >= 2L, "invalid numeric matrix")
  nipals_assert(ncomp >= 1L && ncomp <= min(nrow(X), ncol(X)), "invalid ncomp")
  nipals_assert(all(apply(X, 2L, function(c) any(!is.na(c)))), "column completely NA")
  invisible(TRUE)
}
