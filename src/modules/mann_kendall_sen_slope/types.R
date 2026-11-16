new_mk_config <- function(conf_level = 0.95, continuity = TRUE) {
  structure(
    list(conf_level = as.numeric(conf_level), continuity = isTRUE(continuity)),
    class = "mk_config"
  )
}

new_mk_result <- function(s_stat, var_s, z_score, p_value, tau, sen_slope, intercept) {
  structure(
    list(S = s_stat, var_S = var_s, z = z_score, p_value = p_value,
         tau = tau, slope = sen_slope, intercept = intercept),
    class = "mk_result"
  )
}
