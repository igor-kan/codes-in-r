cochran_result <- function(q, df, p_value) {
  structure(list(q = q, df = df, p_value = p_value), class = "cochran_q")
}

make_module_meta <- function() {
  structure(list(slug = "cochran_q_homogeneity_r_d61", version = 1L), class = "r_mod_meta")
}
