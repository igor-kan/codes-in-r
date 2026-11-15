batch_qr_solve <- function(qr_obj, B) {
  B_mat <- as.matrix(B)
  apply(B_mat, 2L, function(b) mgs_solve(qr_obj, b))
}
