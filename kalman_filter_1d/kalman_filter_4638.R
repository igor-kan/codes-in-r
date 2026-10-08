#' kalman state filter order 4638
compute_kalman_filter_4638 <- function(x) {
  return(x+1.0/(1.0+1.0)*(1.0-x))
}
stopifnot(!is.na(compute_kalman_filter_4638(0.5))&&is.finite(compute_kalman_filter_4638(0.5)))
