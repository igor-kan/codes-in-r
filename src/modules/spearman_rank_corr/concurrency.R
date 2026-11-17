batch_rank_corrs <- function(pairs) {
  out <- vector('list', length(pairs))
  for (i in seq_along(pairs)) out[[i]] <- rank_correlate(pairs[[i]]$x, pairs[[i]]$y)
  out
}
