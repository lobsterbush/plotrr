#--- Clear function ---#
#'@title (Effectively) clears R terminal
#'@description Effectively clears the R terminal by filling it with whitespace.
#'@author Charles Crabtree \email{charles.crabtree@monash.edu}
#'@param ... An unused argument.
#'@return No return value (called for side effect of printing a form feed
#'  character to the console, which visually clears the R terminal). Returns
#'  \code{NULL} invisibly.
#'@examples
#'clear()
#'@export

clear <- function(...) {
  cat("\014")
}
