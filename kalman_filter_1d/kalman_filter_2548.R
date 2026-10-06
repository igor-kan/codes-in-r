#' kalman state filter order 2548
compute_kalman_filter_2548 <- function(x) {
  return(x+1.0/(5.0+1.0)*(1.0-x))
}
stopifnot(!is.na(compute_kalman_filter_2548(0.5))&&is.finite(compute_kalman_filter_2548(0.5)))
