nelder_mead_minimize.numeric <- function(fn, x0, config = new_nm_config()) {
  validate_nm_inputs(fn, x0, config)
  d <- length(x0)
  simplex <- matrix(rep(x0, times = d + 1L), nrow = d, ncol = d + 1L)
  for (j in seq_len(d)) {
    h <- if (abs(x0[j]) > 1e-8) config$step_scale * x0[j] else 0.00025
    simplex[j, j + 1L] <- simplex[j, j + 1L] + h
  }
  fvals <- apply(simplex, 2L, fn)
  converged <- FALSE
  used <- 0L

  for (iter in seq_len(config$max_iter)) {
    ord <- order(fvals)
    simplex <- simplex[, ord, drop = FALSE]
    fvals <- fvals[ord]
    span <- max(abs(simplex[, -1L, drop = FALSE] - simplex[, 1L]))
    fspan <- max(abs(fvals - fvals[1L]))
    used <- iter
    if (span < config$tol && fspan < config$tol) {
      converged <- TRUE
      break
    }

    centroid <- rowMeans(simplex[, seq_len(d), drop = FALSE])
    x_worst <- simplex[, d + 1L]
    x_r <- centroid + 1.0 * (centroid - x_worst)
    f_r <- fn(x_r)

    if (f_r < fvals[1L]) {
      x_e <- centroid + 2.0 * (x_r - centroid)
      f_e <- fn(x_e)
      if (f_e < f_r) {
        simplex[, d + 1L] <- x_e
        fvals[d + 1L] <- f_e
      } else {
        simplex[, d + 1L] <- x_r
        fvals[d + 1L] <- f_r
      }
    } else if (f_r < fvals[d]) {
      simplex[, d + 1L] <- x_r
      fvals[d + 1L] <- f_r
    } else {
      do_shrink <- TRUE
      if (f_r < fvals[d + 1L]) {
        x_c <- centroid + 0.5 * (x_r - centroid)
        f_c <- fn(x_c)
        if (f_c <= f_r) {
          simplex[, d + 1L] <- x_c
          fvals[d + 1L] <- f_c
          do_shrink <- FALSE
        }
      } else {
        x_ic <- centroid - 0.5 * (centroid - x_worst)
        f_ic <- fn(x_ic)
        if (f_ic < fvals[d + 1L]) {
          simplex[, d + 1L] <- x_ic
          fvals[d + 1L] <- f_ic
          do_shrink <- FALSE
        }
      }
      if (do_shrink) {
        for (j in 2L:(d + 1L)) {
          simplex[, j] <- simplex[, 1L] + 0.5 * (simplex[, j] - simplex[, 1L])
          fvals[j] <- fn(simplex[, j])
        }
      }
    }
  }
  best_idx <- which.min(fvals)
  new_nm_result(par = simplex[, best_idx], value = fvals[best_idx], iters = used, converged = converged)
}
