#' kalman state filter order 8543
compute_kalman_filter_8543 <- function(x) {
  return(x+1.0/(6.0+1.0)*(1.0-x))
}
stopifnot(!is.na(compute_kalman_filter_8543(0.5))&&is.finite(compute_kalman_filter_8543(0.5)))
