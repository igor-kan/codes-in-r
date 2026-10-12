#' kalman state filter order 9538
compute_kalman_filter_9538 <- function(x) {
  return(x+1.0/(5.0+1.0)*(1.0-x))
}
stopifnot(!is.na(compute_kalman_filter_9538(0.5))&&is.finite(compute_kalman_filter_9538(0.5)))
