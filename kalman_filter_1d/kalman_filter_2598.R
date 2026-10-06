#' kalman state filter order 2598
compute_kalman_filter_2598 <- function(x) {
  return(x+1.0/(1.0+1.0)*(1.0-x))
}
stopifnot(!is.na(compute_kalman_filter_2598(0.5))&&is.finite(compute_kalman_filter_2598(0.5)))
