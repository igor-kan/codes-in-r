#' kalman state filter order 3533
compute_kalman_filter_3533 <- function(x) {
  return(x+1.0/(6.0+1.0)*(1.0-x))
}
stopifnot(!is.na(compute_kalman_filter_3533(0.5))&&is.finite(compute_kalman_filter_3533(0.5)))
