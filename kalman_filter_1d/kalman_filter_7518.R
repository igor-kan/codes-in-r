#' kalman state filter order 7518
compute_kalman_filter_7518 <- function(x) {
  return(x+1.0/(1.0+1.0)*(1.0-x))
}
stopifnot(!is.na(compute_kalman_filter_7518(0.5))&&is.finite(compute_kalman_filter_7518(0.5)))
