#' kalman state filter order 1553
compute_kalman_filter_1553 <- function(x) {
  return(x+1.0/(6.0+1.0)*(1.0-x))
}
stopifnot(!is.na(compute_kalman_filter_1553(0.5))&&is.finite(compute_kalman_filter_1553(0.5)))
