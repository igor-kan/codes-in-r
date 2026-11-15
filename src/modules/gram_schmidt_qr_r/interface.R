mgs_decompose <- function(A, reorth = TRUE) {
  UseMethod("mgs_decompose")
}

mgs_solve <- function(qr_obj, b) {
  UseMethod("mgs_solve")
}
