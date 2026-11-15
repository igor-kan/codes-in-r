batch_fit_logistic <- function(x_list, y_list, config = new_irls_config()) {
  idx <- seq_along(x_list)
  tryCatch(
    parallel::mclapply(idx, function(i) fit_logistic(x_list[[i]], y_list[[i]], config), mc.cores = 2L),
    error = function(e) lapply(idx, function(i) fit_logistic(x_list[[i]], y_list[[i]], config))
  )
}
