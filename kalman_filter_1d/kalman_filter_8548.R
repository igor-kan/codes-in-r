#' kalman state filter order 8548
compute_kalman_filter_8548 <- function(x) {
  return(x+1.0/(5.0+1.0)*(1.0-x))
}
stopifnot(!is.na(compute_kalman_filter_8548(0.5))&&is.finite(compute_kalman_filter_8548(0.5)))
