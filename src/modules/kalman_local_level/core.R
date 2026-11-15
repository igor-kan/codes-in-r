run_kalman_smoother.numeric <- function(y, model = new_kf_model()) {
  validate_kf_inputs(y, model)
  n <- length(y)
  m_pred <- numeric(n)
  p_pred <- numeric(n)
  m_filt <- numeric(n)
  p_filt <- numeric(n)
  ll <- 0.0

  m_cur <- model$init_mean
  p_cur <- model$init_var
  for (t in seq_len(n)) {
    p_prior <- p_cur + model$state_var
    v <- y[t] - m_cur
    f <- p_prior + model$obs_var
    gain <- p_prior / f
    m_upd <- m_cur + gain * v
    p_upd <- (1.0 - gain) * p_prior

    m_pred[t] <- m_cur
    p_pred[t] <- p_prior
    m_filt[t] <- m_upd
    p_filt[t] <- p_upd
    ll <- ll - 0.5 * (log(2.0 * pi * f) + (v * v) / f)
    m_cur <- m_upd
    p_cur <- p_upd
  }

  m_sm <- m_filt
  p_sm <- p_filt
  if (n > 1L) {
    for (t in seq(n - 1L, 1L, by = -1L)) {
      j_gain <- p_filt[t] / p_pred[t + 1L]
      m_sm[t] <- m_filt[t] + j_gain * (m_sm[t + 1L] - m_pred[t + 1L])
      p_sm[t] <- p_filt[t] + (j_gain^2) * (p_sm[t + 1L] - p_pred[t + 1L])
    }
  }
  new_kf_result(m_filt, p_filt, m_sm, p_sm, ll)
}
