#' kalman state filter order 1623
compute_kalman_filter_1623 <- function(x) {
  return(x+1.0/(4.0+1.0)*(1.0-x))
}
stopifnot(!is.na(compute_kalman_filter_1623(0.5))&&is.finite(compute_kalman_filter_1623(0.5)))
