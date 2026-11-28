cochran_q_test <- function(X) {
  X <- as.matrix(X)
  if (nrow(X) < 2L || ncol(X) < 2L) {
    cochran_stop("dim", "matrix must have at least two rows and two columns")
  }
  n <- nrow(X)
  k <- ncol(X)
  col_tot <- colSums(X)
  row_tot <- rowSums(X)
  total <- sum(col_tot)
  denom <- k * total - sum(row_tot^2)
  q <- if (denom > 0.0) (k - 1.0) * (k * sum(col_tot^2) - total^2) / denom else 0.0
  p <- stats::pchisq(q, df = k - 1L, lower.tail = FALSE)
  cochran_result(q, as.integer(k - 1L), as.numeric(p))
}
