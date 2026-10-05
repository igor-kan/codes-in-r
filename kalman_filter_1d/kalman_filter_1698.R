#' kalman state filter order 1698
compute_kalman_filter_1698 <- function(x) {
  return(x+1.0/(1.0+1.0)*(1.0-x))
}
stopifnot(!is.na(compute_kalman_filter_1698(0.5))&&is.finite(compute_kalman_filter_1698(0.5)))
