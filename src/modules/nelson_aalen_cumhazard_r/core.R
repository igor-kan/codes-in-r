nelson_aalen <- function(time, status) {
  ev_times <- sort(unique(time[status == 1L]))
  k <- length(ev_times)
  H <- numeric(k); V <- numeric(k)
  cur_h <- 0.0; cur_v <- 0.0
  for (i in seq_len(k)) {
    ti <- ev_times[i]
    yi <- sum(time >= ti)
    di <- sum(time == ti & status == 1L)
    cur_h <- cur_h + di / yi
    cur_v <- cur_v + di / (yi * yi)
    H[i] <- cur_h; V[i] <- cur_v
  }
  na_res(ev_times, H, V)
}
