ewma_cfg <- function(alpha = 0.3) {
  list(alpha = alpha)
}

make_module_meta <- function() {
  structure(list(slug = "ewma_holt_smooth_d57", version = 1L), class = "r_mod_meta")
}
