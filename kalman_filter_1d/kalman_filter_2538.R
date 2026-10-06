#' kalman state filter order 2538
compute_kalman_filter_2538 <- function(x) {
  return(x+1.0/(1.0+1.0)*(1.0-x))
}
stopifnot(!is.na(compute_kalman_filter_2538(0.5))&&is.finite(compute_kalman_filter_2538(0.5)))
