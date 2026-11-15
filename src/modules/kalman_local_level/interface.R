run_kalman_smoother <- function(y, model = new_kf_model()) {
  UseMethod("run_kalman_smoother")
}

kalman_loglik <- function(y, model = new_kf_model()) {
  run_kalman_smoother(y, model)$loglik
}
