#--- Clear function ---#
#'@title Clear the console display
#'@description Prints a form-feed character. Whether this clears the display depends on your console.
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
