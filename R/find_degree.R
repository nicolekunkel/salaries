#' Find Degree
#'
#' @param x, the data of the degrees
#' @return information about the median salary of graduates according to undergraduate degree
#' @import
#'     dplyr
#' @examples
#'     find_degree("Biology")
#' @export

find_degree <- function(x) {
  x1 <- dplyr::filter(degrees_that_pay_back, major == x)
  return(as.data.frame(x1))
}
