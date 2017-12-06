#' Find College
#'
#' @param x, the data of the universities
#' @return information about the median salary of graduates
#' @import
#'     dplyr
#' @examples
#'     find_college("University of Mississippi")
#' @export

find_college <- function(x) {
  x1 <- dplyr::filter(salaries_by_college_type, name == x)
  return(as.data.frame(x1))
}
