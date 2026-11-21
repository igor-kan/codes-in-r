batch_eval_list <- function(xs, fn) {
  out <- vector("list", length(xs))
  for (i in seq_along(xs)) {
    out[[i]] <- fn(xs[[i]])
  }
  out
}
