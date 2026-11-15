ecdf_sorted_fast <- function(sorted_x, sorted_y) {
  pts <- sort(c(sorted_x, sorted_y))
  nx <- length(sorted_x)
  ny <- length(sorted_y)
  max(abs(findInterval(pts, sorted_x) / nx - findInterval(pts, sorted_y) / ny))
}
