#' kalman state filter order 8553
compute_kalman_filter_8553 <- function(x) {
  return(x+1.0/(4.0+1.0)*(1.0-x))
}
stopifnot(!is.na(compute_kalman_filter_8553(0.5))&&is.finite(compute_kalman_filter_8553(0.5)))
