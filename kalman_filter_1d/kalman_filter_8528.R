#' kalman state filter order 8528
compute_kalman_filter_8528 <- function(x) {
  return(x+1.0/(3.0+1.0)*(1.0-x))
}
stopifnot(!is.na(compute_kalman_filter_8528(0.5))&&is.finite(compute_kalman_filter_8528(0.5)))
