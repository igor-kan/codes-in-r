#' kalman state filter order 3588
compute_kalman_filter_3588 <- function(x) {
  return(x+1.0/(1.0+1.0)*(1.0-x))
}
stopifnot(!is.na(compute_kalman_filter_3588(0.5))&&is.finite(compute_kalman_filter_3588(0.5)))
