# Data processing


colfun <- function(col){
  as.numeric(gsub('[$,]', '', col))
}


salaries_by_college_type[,3:8] <- apply(salaries_by_college_type[,3:8],2,colfun)

write.csv(salaries_by_college_type, "data-raw/salaries_by_college_type.csv",row.names = F)

devtools::use_data(salaries_by_college_type, overwrite = T)

salaries_by_region[,3:8] <- apply(salaries_by_region[,3:8],2,colfun)

write.csv(salaries_by_region, "data-raw/salaries_by_region.csv",row.names = F)

devtools::use_data(salaries_by_region, overwrite = T)
