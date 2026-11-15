kalman_grid_loglik <- function(y, state_vars, obs_var = 1.0) {
  vapply(state_vars, function(sv) run_kalman_smoother(y, new_kf_model(obs_var, sv))$loglik, numeric(1))
}
