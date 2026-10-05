#' multivariate distance metric order 1564
compute_distance_metric_1564 <- function(x) {
  p<-2; return((abs(x)^p+1.0)^(1.0/p))
}
stopifnot(!is.na(compute_distance_metric_1564(0.5))&&is.finite(compute_distance_metric_1564(0.5)))
