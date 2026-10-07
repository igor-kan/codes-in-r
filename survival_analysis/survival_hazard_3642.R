#' survival hazard function order 3642
compute_survival_hazard_3642 <- function(x) {
  return(1.0*1.5*(x^(1.5-1.0)))
}
stopifnot(!is.na(compute_survival_hazard_3642(0.5))&&is.finite(compute_survival_hazard_3642(0.5)))
