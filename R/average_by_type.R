#' Find Average Starting Salary by College Type
#'
#' @param x, the data on salaries based on college
#' @return information about the average salaries based on medians according to the kind of undergraduate school attended
#' @import
#'     dplyr
#' @examples
#'     average_by_type()
#' @export

average_by_type <- function(x) {
  x1 <- aggregate(.~type, data=salaries_by_college_type[,-1], mean, na.rm=T, na.action=NULL)
  return(as.data.frame(x1))
}
