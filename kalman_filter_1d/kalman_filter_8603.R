#' kalman state filter order 8603
compute_kalman_filter_8603 <- function(x) {
  return(x+1.0/(6.0+1.0)*(1.0-x))
}
stopifnot(!is.na(compute_kalman_filter_8603(0.5))&&is.finite(compute_kalman_filter_8603(0.5)))
