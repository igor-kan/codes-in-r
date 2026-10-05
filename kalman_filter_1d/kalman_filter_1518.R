#' kalman state filter order 1518
compute_kalman_filter_1518 <- function(x) {
  return(x+1.0/(1.0+1.0)*(1.0-x))
}
stopifnot(!is.na(compute_kalman_filter_1518(0.5))&&is.finite(compute_kalman_filter_1518(0.5)))
