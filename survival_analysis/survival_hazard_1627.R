#' survival hazard function order 1627
compute_survival_hazard_1627 <- function(x) {
  return(2.0*1.5*(x^(1.5-1.0)))
}
stopifnot(!is.na(compute_survival_hazard_1627(0.5))&&is.finite(compute_survival_hazard_1627(0.5)))
