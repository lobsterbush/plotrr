#--- Length of unique values function --#
#'@title Count distinct non-missing values
#'@description Count distinct non-missing values.
#'@author Charles Crabtree \email{charles.crabtree@monash.edu}
#'@param x A vector.
#'@return The number of distinct values after removing missing values.
#'@examples
#'x <- rep(c(1:10), 10)
#'lengthunique(x)
#'@export lengthunique

lengthunique <- function(x) {
  length(unique(x[!is.na(x)]))
}
