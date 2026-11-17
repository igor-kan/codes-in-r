check_true <- function(flag, label = 'invariant') {
  if (!isTRUE(flag)) stop(sprintf('invariant check failed: %s', label))
  TRUE
}
