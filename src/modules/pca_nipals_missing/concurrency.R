batch_nipals <- function(mats, ncomp = 2L) {
  tryCatch(
    parallel::mclapply(mats, function(m) fit_nipals_pca(m, ncomp), mc.cores = 2L),
    error = function(e) lapply(mats, function(m) fit_nipals_pca(m, ncomp))
  )
}
