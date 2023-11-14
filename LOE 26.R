air_data=datasets::airquality
print(air_data)
#order by 1 and 2 columns
ordering= airquality[order(airquality$Ozone,airquality$Solar.R),]
print(ordering)
#removing the variable
air_data[,c("Solar.R")]=NULL
print(air_data)
air_data[,c("Wind")]=NULL
print(air_data)