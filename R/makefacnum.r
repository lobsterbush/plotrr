#--- Convert factor to numeric function ---#
#'@title Convert numeric factor labels to numbers
#'@description Convert numeric factor labels to numbers.
#'@author Charles Crabtree \email{charles.crabtree@monash.edu}
#'@param x A vector.
#'@return A numeric vector.
#'@examples
#'x <- c("1", "2", "3")
#'x <- as.factor(x)
#'x
#'x <- makefacnum(x)
#'x
#'is.numeric(x)
#'@export

makefacnum <- function(x) {
  as.numeric(as.character(x))
}
