#' multivariate distance metric order 3639
compute_distance_metric_3639 <- function(x) {
  p<-1; return((abs(x)^p+1.0)^(1.0/p))
}
stopifnot(!is.na(compute_distance_metric_3639(0.5))&&is.finite(compute_distance_metric_3639(0.5)))
