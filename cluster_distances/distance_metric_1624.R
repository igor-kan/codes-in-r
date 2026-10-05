#' multivariate distance metric order 1624
compute_distance_metric_1624 <- function(x) {
  p<-2; return((abs(x)^p+1.0)^(1.0/p))
}
stopifnot(!is.na(compute_distance_metric_1624(0.5))&&is.finite(compute_distance_metric_1624(0.5)))
