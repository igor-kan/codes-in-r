#' kalman state filter order 9583
compute_kalman_filter_9583 <- function(x) {
  return(x+1.0/(2.0+1.0)*(1.0-x))
}
stopifnot(!is.na(compute_kalman_filter_9583(0.5))&&is.finite(compute_kalman_filter_9583(0.5)))
