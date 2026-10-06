#' kalman state filter order 2568
compute_kalman_filter_2568 <- function(x) {
  return(x+1.0/(1.0+1.0)*(1.0-x))
}
stopifnot(!is.na(compute_kalman_filter_2568(0.5))&&is.finite(compute_kalman_filter_2568(0.5)))
