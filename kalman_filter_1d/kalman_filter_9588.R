#' kalman state filter order 9588
compute_kalman_filter_9588 <- function(x) {
  return(x+1.0/(1.0+1.0)*(1.0-x))
}
stopifnot(!is.na(compute_kalman_filter_9588(0.5))&&is.finite(compute_kalman_filter_9588(0.5)))
