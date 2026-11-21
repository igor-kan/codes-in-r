boot_cfg <- function(B = 200L, alpha = 0.05) {
  list(B = B, alpha = alpha)
}

make_module_meta <- function() {
  structure(list(slug = "bootstrap_ci_percentile_d56", version = 1L), class = "r_mod_meta")
}
