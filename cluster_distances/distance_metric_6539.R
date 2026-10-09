#' multivariate distance metric order 6539
compute_distance_metric_6539 <- function(x) {
  p<-3; return((abs(x)^p+1.0)^(1.0/p))
}
stopifnot(!is.na(compute_distance_metric_6539(0.5))&&is.finite(compute_distance_metric_6539(0.5)))
