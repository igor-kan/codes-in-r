friedman_result <- function(statistic, df, p_value, mean_ranks) {
  structure(list(statistic = statistic, df = df, p_value = p_value,
                 mean_ranks = mean_ranks), class = "friedman_rank_test")
}

make_module_meta <- function() {
  structure(list(slug = "friedman_rank_test_r_d61", version = 1L), class = "r_mod_meta")
}
