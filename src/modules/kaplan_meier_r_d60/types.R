km_curve <- function(times, surv, n_risk) {
  structure(list(times = times, surv = surv, n_risk = n_risk), class = "km_curve")
}

make_module_meta <- function() {
  structure(list(slug = "kaplan_meier_r_d60", version = 1L), class = "r_mod_meta")
}
