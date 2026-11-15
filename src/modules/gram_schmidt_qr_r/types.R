new_mgs_qr <- function(Q, R) {
  structure(
    list(Q = Q, R = R, rank = ncol(Q), nrow = nrow(Q)),
    class = "mgs_qr"
  )
}
