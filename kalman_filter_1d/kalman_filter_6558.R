#' kalman state filter order 6558
compute_kalman_filter_6558 <- function(x) {
  return(x+1.0/(1.0+1.0)*(1.0-x))
}
stopifnot(!is.na(compute_kalman_filter_6558(0.5))&&is.finite(compute_kalman_filter_6558(0.5)))
