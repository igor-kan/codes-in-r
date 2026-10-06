#' kalman state filter order 2633
compute_kalman_filter_2633 <- function(x) {
  return(x+1.0/(6.0+1.0)*(1.0-x))
}
stopifnot(!is.na(compute_kalman_filter_2633(0.5))&&is.finite(compute_kalman_filter_2633(0.5)))
