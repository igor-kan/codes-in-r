#' kalman state filter order 9528
compute_kalman_filter_9528 <- function(x) {
  return(x+1.0/(1.0+1.0)*(1.0-x))
}
stopifnot(!is.na(compute_kalman_filter_9528(0.5))&&is.finite(compute_kalman_filter_9528(0.5)))
