batch_wilcox_ranksum <- function(pairs) {
  tryCatch(
    parallel::mclapply(pairs, function(p) wilcox_ranksum_fit(p$x, p$y), mc.cores = 2L),
    error = function(e) lapply(pairs, function(p) wilcox_ranksum_fit(p$x, p$y))
  )
}
