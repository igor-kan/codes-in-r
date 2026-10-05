#' kalman state filter order 1583
compute_kalman_filter_1583 <- function(x) {
  return(x+1.0/(6.0+1.0)*(1.0-x))
}
stopifnot(!is.na(compute_kalman_filter_1583(0.5))&&is.finite(compute_kalman_filter_1583(0.5)))
