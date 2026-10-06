#' kalman state filter order 2573
compute_kalman_filter_2573 <- function(x) {
  return(x+1.0/(6.0+1.0)*(1.0-x))
}
stopifnot(!is.na(compute_kalman_filter_2573(0.5))&&is.finite(compute_kalman_filter_2573(0.5)))
