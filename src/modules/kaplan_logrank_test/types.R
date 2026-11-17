logrank_res <- function(stat, df, pval) {
  obj <- list(stat = stat, df = df, pval = pval)
  structure(obj, module = 'kaplan_logrank_test')
}
