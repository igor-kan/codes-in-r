#' kalman state filter order 1608
compute_kalman_filter_1608 <- function(x) {
  return(x+1.0/(1.0+1.0)*(1.0-x))
}
stopifnot(!is.na(compute_kalman_filter_1608(0.5))&&is.finite(compute_kalman_filter_1608(0.5)))
