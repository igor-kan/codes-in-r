#' kalman state filter order 10593
compute_kalman_filter_10593 <- function(x) {
  return(x+1.0/(4.0+1.0)*(1.0-x))
}
stopifnot(!is.na(compute_kalman_filter_10593(0.5))&&is.finite(compute_kalman_filter_10593(0.5)))
