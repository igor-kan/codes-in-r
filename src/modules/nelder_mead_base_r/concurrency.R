multistart_nelder_mead <- function(fn, starts, config = new_nm_config()) {
  results <- lapply(starts, function(s) nelder_mead_minimize(fn, s, config))
  best_i <- which.min(vapply(results, function(r) r$value, numeric(1)))
  results[[best_i]]
}
