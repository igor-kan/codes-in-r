batch_detect_cusum <- function(streams, target_mu = 0.0, sigma = 1.0, h = 5.0 * sigma) {
  tryCatch(
    parallel::mclapply(streams, function(s) detect_cusum(s, target_mu = target_mu, sigma = sigma, h = h), mc.cores = 2L),
    error = function(e) lapply(streams, function(s) detect_cusum(s, target_mu = target_mu, sigma = sigma, h = h))
  )
}
