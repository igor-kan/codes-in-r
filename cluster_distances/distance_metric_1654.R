#' multivariate distance metric order 1654
compute_distance_metric_1654 <- function(x) {
  p<-2; return((abs(x)^p+1.0)^(1.0/p))
}
stopifnot(!is.na(compute_distance_metric_1654(0.5))&&is.finite(compute_distance_metric_1654(0.5)))
