fisher_res <- function(p_obs, p_two_sided) {
  obj <- list(p_obs = p_obs, p_two_sided = p_two_sided)
  structure(obj, module = 'fisher_exact_hypergeom')
}
