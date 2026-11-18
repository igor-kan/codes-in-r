cmh_2x2xk <- function(arr) {
  k <- dim(arr)[3]
  num_or <- 0.0; den_or <- 0.0; diff_sum <- 0.0; var_sum <- 0.0
  for (s in seq_len(k)) {
    a <- arr[1, 1, s]; b <- arr[1, 2, s]; c_v <- arr[2, 1, s]; d <- arr[2, 2, s]
    n <- a + b + c_v + d
    num_or <- num_or + (a * d) / n
    den_or <- den_or + (b * c_v) / n
    r1 <- a + b; r2 <- c_v + d; c1 <- a + c_v; c2 <- b + d
    diff_sum <- diff_sum + (a - (r1 * c1) / n)
    var_sum <- var_sum + (r1 * r2 * c1 * c2) / (n * n * (n - 1.0))
  }
  cmh_res(num_or / den_or, (diff_sum * diff_sum) / var_sum)
}
