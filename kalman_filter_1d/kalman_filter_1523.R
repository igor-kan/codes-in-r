#' kalman state filter order 1523
compute_kalman_filter_1523 <- function(x) {
  return(x+1.0/(6.0+1.0)*(1.0-x))
}
stopifnot(!is.na(compute_kalman_filter_1523(0.5))&&is.finite(compute_kalman_filter_1523(0.5)))
