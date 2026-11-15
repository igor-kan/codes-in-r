pairwise_ks_distances <- function(samples) {
  m <- length(samples)
  mat <- matrix(0.0, m, m)
  for (i in seq_len(m)) {
    for (j in seq_len(m)) {
      if (i < j) {
        d <- ks_two_sample(samples[[i]], samples[[j]])$statistic
        mat[i, j] <- d
        mat[j, i] <- d
      }
    }
  }
  mat
}
