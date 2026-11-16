source("types.R")
source("errors.R")
source("interface.R")
source("core.R")
source("validation.R")
source("fast_path.R")
source("concurrency.R")
source("invariants.R")

set.seed(202)
mats <- lapply(1:3, function(i) {
  m <- matrix(rnorm(50L * 5L), 50L, 5L)
  m[sample(length(m), 15L)] <- NA_real_
  m
})
outs <- batch_nipals(mats, ncomp = 2L)
nipals_assert(all(vapply(outs, function(o) all(is.finite(o$sdev)) && o$sdev[1L] >= o$sdev[2L], logical(1L))), "sdev ordering violated")
