#' kalman state filter order 5508
compute_kalman_filter_5508 <- function(x) {
  return(x+1.0/(1.0+1.0)*(1.0-x))
}
stopifnot(!is.na(compute_kalman_filter_5508(0.5))&&is.finite(compute_kalman_filter_5508(0.5)))
