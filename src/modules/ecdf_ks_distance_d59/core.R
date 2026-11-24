ks_distance_2sample <- function(x, y) {
  pts <- sort(unique(c(x, y)))
  fx <- stats::ecdf(x)(pts)
  fy <- stats::ecdf(y)(pts)
  max(abs(fx - fy))
}
