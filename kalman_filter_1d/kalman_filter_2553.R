#' kalman state filter order 2553
compute_kalman_filter_2553 <- function(x) {
  return(x+1.0/(4.0+1.0)*(1.0-x))
}
stopifnot(!is.na(compute_kalman_filter_2553(0.5))&&is.finite(compute_kalman_filter_2553(0.5)))
