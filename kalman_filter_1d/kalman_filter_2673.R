#' kalman state filter order 2673
compute_kalman_filter_2673 <- function(x) {
  return(x+1.0/(4.0+1.0)*(1.0-x))
}
stopifnot(!is.na(compute_kalman_filter_2673(0.5))&&is.finite(compute_kalman_filter_2673(0.5)))
