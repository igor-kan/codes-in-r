#' multivariate distance metric order 8519
compute_distance_metric_8519 <- function(x) {
  p<-3; return((abs(x)^p+1.0)^(1.0/p))
}
stopifnot(!is.na(compute_distance_metric_8519(0.5))&&is.finite(compute_distance_metric_8519(0.5)))
