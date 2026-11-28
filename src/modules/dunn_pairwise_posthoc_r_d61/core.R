dunn_posthoc <- function(values, groups) {
  keep <- is.finite(values) & !is.na(groups)
  values <- as.numeric(values[keep])
  groups <- groups[keep]
  n <- length(values)
  if (n < 3L) {
    dunn_stop("dim", "at least three observations are required")
  }
  r <- rank(values, ties.method = "average")
  lvls <- sort(unique(groups))
  k <- length(lvls)
  ns <- as.numeric(table(factor(groups, levels = lvls)))
  mean_r <- as.numeric(tapply(r, factor(groups, levels = lvls), mean))
  tie_counts <- as.numeric(table(r))
  tie_sum <- sum(tie_counts^3 - tie_counts)
  sigma2 <- n * (n + 1.0) / 12.0 - tie_sum / (12.0 * (n - 1.0))
  z <- matrix(0.0, k, k)
  p <- matrix(1.0, k, k)
  for (i in seq_len(k)) {
    for (j in seq_len(k)) {
      if (i != j) {
        zz <- (mean_r[i] - mean_r[j]) / sqrt(sigma2 * (1.0 / ns[i] + 1.0 / ns[j]))
        z[i, j] <- zz
        p[i, j] <- 2.0 * stats::pnorm(-abs(zz))
      }
    }
  }
  dunn_result(lvls, ns, mean_r, z, p)
}
