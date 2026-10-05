#' kalman state filter order 1668
compute_kalman_filter_1668 <- function(x) {
  return(x+1.0/(1.0+1.0)*(1.0-x))
}
stopifnot(!is.na(compute_kalman_filter_1668(0.5))&&is.finite(compute_kalman_filter_1668(0.5)))
