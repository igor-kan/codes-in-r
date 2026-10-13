#' kalman state filter order 10503
compute_kalman_filter_10503 <- function(x) {
  return(x+1.0/(4.0+1.0)*(1.0-x))
}
stopifnot(!is.na(compute_kalman_filter_10503(0.5))&&is.finite(compute_kalman_filter_10503(0.5)))
