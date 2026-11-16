parallel_ridge_cv <- function(datasets, lambdas = 10^seq(-3, 3, length.out = 21L)) {
  tryCatch(
    parallel::mclapply(datasets, function(d) fit_ridge_gcv(d$X, d$y, lambdas), mc.cores = 2L),
    error = function(e) lapply(datasets, function(d) fit_ridge_gcv(d$X, d$y, lambdas))
  )
}
