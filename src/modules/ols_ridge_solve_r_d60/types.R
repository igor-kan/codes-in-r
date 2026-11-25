ridge_fit <- function(beta, rss, l2_norm) {
  structure(list(beta = beta, rss = rss, l2_norm = l2_norm), class = "ridge_fit")
}

make_module_meta <- function() {
  structure(list(slug = "ols_ridge_solve_r_d60", version = 1L), class = "r_mod_meta")
}
