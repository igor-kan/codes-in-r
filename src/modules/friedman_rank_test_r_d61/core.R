friedman_rank_test <- function(X) {
  X <- as.matrix(X)
  if (nrow(X) < 2L || ncol(X) < 3L) {
    friedman_rank_test_r_d61_stop("dim", "need at least two blocks and three treatments")
  }
  if (any(!is.finite(X))) {
    friedman_rank_test_r_d61_stop("finite", "matrix must contain only finite values")
  }
  n <- nrow(X)
  k <- ncol(X)
  ranks <- t(apply(X, 1L, rank, ties.method = "average"))
  rank_sums <- colSums(ranks)
  tie_sum <- sum(apply(ranks, 1L, function(r) sum(table(r)^3 - table(r))))
  stat <- (12.0 / (n * k * (k + 1.0))) * sum(rank_sums^2) - 3.0 * n * (k + 1.0)
  correction <- 1.0 - tie_sum / (n * (k^3 - k))
  if (correction > 0.0) {
    stat <- stat / correction
  }
  p <- stats::pchisq(stat, df = k - 1L, lower.tail = FALSE)
  friedman_result(as.numeric(stat), as.integer(k - 1L), as.numeric(p),
                  as.numeric(rank_sums / n))
}
