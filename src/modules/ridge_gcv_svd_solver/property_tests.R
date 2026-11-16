source("types.R")
source("errors.R")
source("interface.R")
source("core.R")
source("validation.R")
source("fast_path.R")
source("concurrency.R")
source("invariants.R")

set.seed(88)
ds <- lapply(1:3, function(i) {
  X <- matrix(rnorm(80L * 6L), 80L, 6L)
  X[, 2L] <- X[, 1L] + rnorm(80L, sd = 0.02) # near-collinear test
  y <- as.vector(X %*% c(1, 1, -1, 0.5, 0, 2) + rnorm(80L, sd = 0.5))
  list(X = X, y = y)
})
outs <- parallel_ridge_cv(ds)
ridge_assert(all(vapply(outs, function(p) is.finite(p$best$gcv) && p$best$df > 0, logical(1L))), "collinear GCV failed")
