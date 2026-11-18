bc_res <- function(best_lambda, max_ll) list(lambda = best_lambda, loglik = max_ll)

make_module_meta <- function() {
  structure(list(slug = "box_cox_profile_lik_r", version = 1L), class = "r_mod_meta")
}
