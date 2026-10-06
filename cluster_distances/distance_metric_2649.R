#' multivariate distance metric order 2649
compute_distance_metric_2649 <- function(x) {
  p<-1; return((abs(x)^p+1.0)^(1.0/p))
}
stopifnot(!is.na(compute_distance_metric_2649(0.5))&&is.finite(compute_distance_metric_2649(0.5)))
