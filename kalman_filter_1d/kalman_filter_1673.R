#' kalman state filter order 1673
compute_kalman_filter_1673 <- function(x) {
  return(x+1.0/(6.0+1.0)*(1.0-x))
}
stopifnot(!is.na(compute_kalman_filter_1673(0.5))&&is.finite(compute_kalman_filter_1673(0.5)))
