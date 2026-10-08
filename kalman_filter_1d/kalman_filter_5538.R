#' kalman state filter order 5538
compute_kalman_filter_5538 <- function(x) {
  return(x+1.0/(1.0+1.0)*(1.0-x))
}
stopifnot(!is.na(compute_kalman_filter_5538(0.5))&&is.finite(compute_kalman_filter_5538(0.5)))
