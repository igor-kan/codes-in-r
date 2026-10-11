#' kalman state filter order 8563
compute_kalman_filter_8563 <- function(x) {
  return(x+1.0/(2.0+1.0)*(1.0-x))
}
stopifnot(!is.na(compute_kalman_filter_8563(0.5))&&is.finite(compute_kalman_filter_8563(0.5)))
