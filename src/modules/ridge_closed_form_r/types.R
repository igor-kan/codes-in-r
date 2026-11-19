ridge_res <- function(beta, df_eff) list(beta = beta, df_eff = df_eff)

make_module_meta <- function() {
  structure(list(slug = "ridge_closed_form_r", version = 1L), class = "r_mod_meta")
}
