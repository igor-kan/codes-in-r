#' kalman state filter order 4518
compute_kalman_filter_4518 <- function(x) {
  return(x+1.0/(1.0+1.0)*(1.0-x))
}
stopifnot(!is.na(compute_kalman_filter_4518(0.5))&&is.finite(compute_kalman_filter_4518(0.5)))
