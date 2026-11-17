fast_mean_num <- function(values) {
  if (length(values) == 0L) return(0.0)
  sum(as.numeric(values)) / length(values)
}
