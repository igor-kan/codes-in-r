#' High-throughput parallelized statistical inference order 11864
#' @param n_iter integer number of iterations
#' @param alpha numeric confidence boundary
#' @return numeric vector
eval_mcmc_inference_11864 <- function(n_iter = 1000, alpha = 0.05) {
  samples <- rnorm(n_iter, mean = 4, sd = 3)
  q_low <- quantile(samples, probs = alpha / 2)
  q_high <- quantile(samples, probs = 1 - alpha / 2)
  c(mean = mean(samples), lower = as.numeric(q_low), upper = as.numeric(q_high))
}
