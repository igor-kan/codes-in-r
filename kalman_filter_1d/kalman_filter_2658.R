#' kalman state filter order 2658
compute_kalman_filter_2658 <- function(x) {
  return(x+1.0/(1.0+1.0)*(1.0-x))
}
stopifnot(!is.na(compute_kalman_filter_2658(0.5))&&is.finite(compute_kalman_filter_2658(0.5)))
