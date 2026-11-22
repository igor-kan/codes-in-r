ensure_stat_invariant <- function(cond, msg = "invariant failed") {
  if (!isTRUE(cond)) {
    stop(msg, call. = FALSE)
  }
  TRUE
}
