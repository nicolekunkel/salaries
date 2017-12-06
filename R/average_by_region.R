#' Find Average Starting Salary by Region
#'
#' @param x, the data on salaries based on college
#' @return information about the average salaries based on medians according to region
#' @import
#'     dplyr
#' @examples
#'     average_by_region()
#' @export

average_by_region <- function(x) {
  x1 <- aggregate(.~region, data=salaries_by_region[-1], mean, na.rm=T, na.action=NULL)
  return(as.data.frame(x1))
}
