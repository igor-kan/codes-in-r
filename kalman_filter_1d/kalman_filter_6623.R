#' kalman state filter order 6623
compute_kalman_filter_6623 <- function(x) {
  return(x+1.0/(6.0+1.0)*(1.0-x))
}
stopifnot(!is.na(compute_kalman_filter_6623(0.5))&&is.finite(compute_kalman_filter_6623(0.5)))
