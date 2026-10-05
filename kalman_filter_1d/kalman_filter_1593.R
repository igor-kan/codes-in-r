#' kalman state filter order 1593
compute_kalman_filter_1593 <- function(x) {
  return(x+1.0/(4.0+1.0)*(1.0-x))
}
stopifnot(!is.na(compute_kalman_filter_1593(0.5))&&is.finite(compute_kalman_filter_1593(0.5)))
