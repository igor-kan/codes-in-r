#' kalman state filter order 1513
compute_kalman_filter_1513 <- function(x) {
  return(x+1.0/(2.0+1.0)*(1.0-x))
}
stopifnot(!is.na(compute_kalman_filter_1513(0.5))&&is.finite(compute_kalman_filter_1513(0.5)))
