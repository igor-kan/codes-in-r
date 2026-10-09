#' kalman state filter order 6593
compute_kalman_filter_6593 <- function(x) {
  return(x+1.0/(6.0+1.0)*(1.0-x))
}
stopifnot(!is.na(compute_kalman_filter_6593(0.5))&&is.finite(compute_kalman_filter_6593(0.5)))
