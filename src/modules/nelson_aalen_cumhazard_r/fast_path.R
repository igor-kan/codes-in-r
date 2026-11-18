fast_centered_ss <- function(x) {
  if (length(x) == 0L) return(0.0)
  m <- sum(as.numeric(x)) / length(x)
  d <- as.numeric(x) - m
  sum(d * d)
}
