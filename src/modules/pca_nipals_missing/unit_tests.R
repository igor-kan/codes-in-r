source("types.R")
source("errors.R")
source("interface.R")
source("core.R")
source("validation.R")
source("fast_path.R")
source("concurrency.R")
source("invariants.R")

set.seed(101)
X <- matrix(rnorm(40L * 4L), 40L, 4L)
X[, 3L] <- X[, 1L] * 0.8 + rnorm(40L, sd = 0.1)
pca <- fit_nipals_pca(X, ncomp = 2L)
verify_nipals_complete_parity(X, pca)

X_miss <- X
X_miss[c(2L, 7L, 19L), 2L] <- NA_real_
X_miss[c(5L, 28L), 4L] <- NA_real_
pca_m <- fit_nipals_pca(X_miss, ncomp = 2L)
nipals_assert(all(is.finite(pca_m$scores)) && all(is.finite(pca_m$loadings)), "NA leaked into NIPALS fit")
