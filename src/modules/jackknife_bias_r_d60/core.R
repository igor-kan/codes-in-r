jackknife_estimate <- function(x, stat_fn) {
  n <- length(x)
  theta_hat <- stat_fn(x)
  loo <- numeric(n)
  for (i in seq_len(n)) {
    loo[i] <- stat_fn(x[-i])
  }
  m_loo <- mean(loo)
  bias <- (n - 1.0) * (m_loo - theta_hat)
  se <- sqrt(((n - 1.0) / n) * sum((loo - m_loo)^2))
  jack_res(theta_hat = theta_hat, bias = bias, jack_se = se)
}
