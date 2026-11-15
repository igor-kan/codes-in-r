new_kf_model <- function(obs_var = 1.0, state_var = 0.25, init_mean = 0.0, init_var = 10.0) {
  structure(
    list(obs_var = obs_var, state_var = state_var, init_mean = init_mean, init_var = init_var),
    class = "kf_local_level"
  )
}

new_kf_result <- function(filtered_mean, filtered_var, smoothed_mean, smoothed_var, loglik) {
  structure(
    list(
      filtered_mean = filtered_mean,
      filtered_var = filtered_var,
      smoothed_mean = smoothed_mean,
      smoothed_var = smoothed_var,
      loglik = loglik
    ),
    class = "kf_result"
  )
}
