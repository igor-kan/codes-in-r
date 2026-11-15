new_pava_fit <- function(fitted, block_weights, block_count) {
  structure(
    list(fitted = fitted, block_weights = block_weights, block_count = as.integer(block_count)),
    class = "pava_fit"
  )
}
