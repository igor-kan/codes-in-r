blomqvist_result <- function(beta, concordant, discordant) {
  structure(list(beta = beta, concordant = concordant, discordant = discordant),
            class = "blomqvist_est")
}

make_module_meta <- function() {
  structure(list(slug = "blomqvist_medial_corr_r_d61", version = 1L), class = "r_mod_meta")
}
