kaplan_meier_fit <- function(time, status) {
  ut <- sort(unique(time[status == 1L]))
  surv <- numeric(length(ut))
  nrisk <- integer(length(ut))
  s_cur <- 1.0
  for (i in seq_along(ut)) {
    ti <- ut[i]
    at_risk <- sum(time >= ti)
    events <- sum(time == ti & status == 1L)
    s_cur <- s_cur * (1.0 - events / at_risk)
    nrisk[i] <- at_risk
    surv[i] <- s_cur
  }
  km_curve(times = ut, surv = surv, n_risk = nrisk)
}
