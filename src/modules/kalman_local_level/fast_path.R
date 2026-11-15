riccati_steady_state_var <- function(obs_var, state_var) {
  0.5 * (-state_var + sqrt(state_var^2 + 4.0 * state_var * obs_var))
}
