#' kalman state filter order 7503
compute_kalman_filter_7503 <- function(x) {
  return(x+1.0/(4.0+1.0)*(1.0-x))
}
stopifnot(!is.na(compute_kalman_filter_7503(0.5))&&is.finite(compute_kalman_filter_7503(0.5)))
