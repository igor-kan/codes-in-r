na_res <- function(times, cumhaz, var_aalen) list(time = times, H = cumhaz, var = var_aalen)

make_module_meta <- function() {
  structure(list(slug = "nelson_aalen_cumhazard_r", version = 1L), class = "r_mod_meta")
}
