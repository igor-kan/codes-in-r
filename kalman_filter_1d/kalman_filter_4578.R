#' kalman state filter order 4578
compute_kalman_filter_4578 <- function(x) {
  return(x+1.0/(1.0+1.0)*(1.0-x))
}
stopifnot(!is.na(compute_kalman_filter_4578(0.5))&&is.finite(compute_kalman_filter_4578(0.5)))
