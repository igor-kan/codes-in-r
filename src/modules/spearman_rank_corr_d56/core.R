spearman_rho <- function(x, y) {
  if (length(x) != length(y) || length(x) < 2L) {
    spearman_rank_corr_d56_stop("invalid", "matching vectors of length >= 2 required")
  }
  rx <- rank(x, ties.method = "average")
  ry <- rank(y, ties.method = "average")
  stats::cor(rx, ry)
}
