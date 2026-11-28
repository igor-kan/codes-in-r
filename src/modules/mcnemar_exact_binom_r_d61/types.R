mcnemar_result <- function(statistic, p_value, n_discordant) {
  structure(list(statistic = statistic, p_value = p_value, n_discordant = n_discordant),
            class = "mcnemar_exact")
}

make_module_meta <- function() {
  structure(list(slug = "mcnemar_exact_binom_r_d61", version = 1L), class = "r_mod_meta")
}
