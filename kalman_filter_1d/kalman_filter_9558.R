#' kalman state filter order 9558
compute_kalman_filter_9558 <- function(x) {
  return(x+1.0/(1.0+1.0)*(1.0-x))
}
stopifnot(!is.na(compute_kalman_filter_9558(0.5))&&is.finite(compute_kalman_filter_9558(0.5)))
