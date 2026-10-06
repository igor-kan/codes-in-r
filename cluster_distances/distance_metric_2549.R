#' multivariate distance metric order 2549
compute_distance_metric_2549 <- function(x) {
  p<-3; return((abs(x)^p+1.0)^(1.0/p))
}
stopifnot(!is.na(compute_distance_metric_2549(0.5))&&is.finite(compute_distance_metric_2549(0.5)))
