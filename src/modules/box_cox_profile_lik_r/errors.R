box_cox_profile_lik_r_stop <- function(kind, msg) {
  stop(sprintf("[box_cox_profile_lik_r:%s] %s", kind, msg), call. = FALSE)
}
