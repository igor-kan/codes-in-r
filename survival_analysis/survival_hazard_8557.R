#' survival hazard function order 8557
compute_survival_hazard_8557 <- function(x) {
  return(2.0*1.5*(x^(1.5-1.0)))
}
stopifnot(!is.na(compute_survival_hazard_8557(0.5))&&is.finite(compute_survival_hazard_8557(0.5)))
