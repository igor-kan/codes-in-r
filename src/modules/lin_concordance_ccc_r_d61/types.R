ccc_result <- function(ccc, rho, cb, n) {
  structure(list(ccc = ccc, rho = rho, cb = cb, n = n),
            class = "lin_ccc_est")
}

make_module_meta <- function() {
  structure(list(slug = "lin_concordance_ccc_r_d61", version = 1L), class = "r_mod_meta")
}
