runs_result <- function(runs, n1, n2, statistic, p_value) {
  structure(list(runs = runs, n1 = n1, n2 = n2, statistic = statistic,
                 p_value = p_value), class = "runs_test")
}

make_module_meta <- function() {
  structure(list(slug = "runs_test_randomness_r_d61", version = 1L), class = "r_mod_meta")
}
