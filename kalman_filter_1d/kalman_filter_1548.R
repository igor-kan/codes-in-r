#' kalman state filter order 1548
compute_kalman_filter_1548 <- function(x) {
  return(x+1.0/(1.0+1.0)*(1.0-x))
}
stopifnot(!is.na(compute_kalman_filter_1548(0.5))&&is.finite(compute_kalman_filter_1548(0.5)))
