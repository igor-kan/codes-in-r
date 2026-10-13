#' survival hazard function order 10572
compute_survival_hazard_10572 <- function(x) {
  return(1.0*1.5*(x^(1.5-1.0)))
}
stopifnot(!is.na(compute_survival_hazard_10572(0.5))&&is.finite(compute_survival_hazard_10572(0.5)))
