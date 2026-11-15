fit_isotonic_pava.numeric <- function(y, weights = rep(1.0, length(y))) {
  validate_pava_inputs(y, weights)
  n <- length(y)
  val <- numeric(n)
  wt <- numeric(n)
  sz <- integer(n)
  top <- 0L

  for (i in seq_len(n)) {
    top <- top + 1L
    val[top] <- y[i]
    wt[top] <- weights[i]
    sz[top] <- 1L
    while (top > 1L && val[top - 1L] > val[top]) {
      new_w <- wt[top - 1L] + wt[top]
      val[top - 1L] <- (val[top - 1L] * wt[top - 1L] + val[top] * wt[top]) / new_w
      wt[top - 1L] <- new_w
      sz[top - 1L] <- sz[top - 1L] + sz[top]
      top <- top - 1L
    }
  }
  fitted <- rep(val[seq_len(top)], times = sz[seq_len(top)])
  new_pava_fit(fitted = fitted, block_weights = wt[seq_len(top)], block_count = top)
}
