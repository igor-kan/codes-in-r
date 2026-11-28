kuiper_result <- function(d_plus, d_minus, v) {
  structure(list(d_plus = d_plus, d_minus = d_minus, v = v), class = "kuiper_stat")
}

make_module_meta <- function() {
  structure(list(slug = "kuiper_circular_ks_r_d61", version = 1L), class = "r_mod_meta")
}
