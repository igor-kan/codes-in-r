new_nm_config <- function(max_iter = 2000L, tol = 1e-10, step_scale = 0.05) {
  structure(
    list(max_iter = as.integer(max_iter), tol = tol, step_scale = step_scale),
    class = "nm_config"
  )
}

new_nm_result <- function(par, value, iters, converged) {
  structure(list(par = par, value = value, iters = iters, converged = converged), class = "nm_result")
}
