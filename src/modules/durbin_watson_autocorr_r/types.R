dw_res <- function(d_stat, rho1) list(dw = d_stat, rho1 = rho1)

make_module_meta <- function() {
  structure(list(slug = "durbin_watson_autocorr_r", version = 1L), class = "r_mod_meta")
}
