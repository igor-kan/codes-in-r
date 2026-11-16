batch_fit_holt <- function(series_list) {
  tryCatch(
    parallel::mclapply(series_list, fit_holt_trend, mc.cores = 2L),
    error = function(e) lapply(series_list, fit_holt_trend)
  )
}
