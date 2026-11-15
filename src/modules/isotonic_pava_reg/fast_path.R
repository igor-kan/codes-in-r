weighted_sse <- function(y, fitted, weights) {
  diff_v <- y - fitted
  sum(weights * diff_v * diff_v)
}
