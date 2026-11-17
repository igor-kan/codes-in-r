logrank_two_sample <- function(time, status, group) {
  ev_times <- sort(unique(time[status == 1]))
  obs1 <- 0.0; exp1 <- 0.0; var_tot <- 0.0
  for (t in ev_times) {
    at_risk <- time >= t
    n <- sum(at_risk); n1 <- sum(at_risk & group == 1)
    d <- sum(time == t & status == 1); d1 <- sum(time == t & status == 1 & group == 1)
    if (n > 1 && d > 0) {
      e1 <- n1 * (d / n)
      v1 <- (n1 * (n - n1) * d * (n - d)) / (n * n * (n - 1))
      obs1 <- obs1 + d1; exp1 <- exp1 + e1; var_tot <- var_tot + v1
    }
  }
  chi2 <- if (var_tot > 0) ((obs1 - exp1)^2) / var_tot else 0.0
  logrank_res(chi2, 1L, pchisq(chi2, df = 1L, lower.tail = FALSE))
}
