batch_adjust_fdr <- function(pval_lists) {
  out <- vector('list', length(pval_lists))
  for (i in seq_along(pval_lists)) out[[i]] <- adjust_pvals(pval_lists[[i]])
  out
}
