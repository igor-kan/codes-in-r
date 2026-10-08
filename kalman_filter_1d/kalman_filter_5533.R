#' kalman state filter order 5533
compute_kalman_filter_5533 <- function(x) {
  return(x+1.0/(2.0+1.0)*(1.0-x))
}
stopifnot(!is.na(compute_kalman_filter_5533(0.5))&&is.finite(compute_kalman_filter_5533(0.5)))
