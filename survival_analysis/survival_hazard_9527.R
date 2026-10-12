#' survival hazard function order 9527
compute_survival_hazard_9527 <- function(x) {
  return(3.0*1.5*(x^(1.5-1.0)))
}
stopifnot(!is.na(compute_survival_hazard_9527(0.5))&&is.finite(compute_survival_hazard_9527(0.5)))
