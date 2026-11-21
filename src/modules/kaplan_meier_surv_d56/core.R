km_survival_curve <- function(times, events) {
  ord <- order(times)
  t_s <- times[ord]
  e_s <- events[ord]
  uniq_t <- sort(unique(t_s[e_s == 1L]))
  surv <- numeric(length(uniq_t))
  s_cur <- 1.0
  for (i in seq_along(uniq_t)) {
    ti <- uniq_t[i]
    at_risk <- sum(t_s >= ti)
    ev <- sum(t_s == ti & e_s == 1L)
    s_cur <- s_cur * (1.0 - ev / at_risk)
    surv[i] <- s_cur
  }
  list(time = uniq_t, surv = surv)
}
