batch_mann_kendall <- function(series_list, config = new_mk_config()) {
  tryCatch(
    parallel::mclapply(series_list, function(s) mann_kendall_sen(s, config), mc.cores = 2L),
    error = function(e) lapply(series_list, function(s) mann_kendall_sen(s, config))
  )
}
