dunn_result <- function(groups, n, mean_rank, z, p_value) {
  structure(list(groups = groups, n = n, mean_rank = mean_rank, z = z, p_value = p_value),
            class = "dunn_posthoc")
}

make_module_meta <- function() {
  structure(list(slug = "dunn_pairwise_posthoc_r_d61", version = 1L), class = "r_mod_meta")
}
