data=datasets::airquality
print(data)
#i.compute mean temperature
mean_temp= sum(data$Temp)/length(data$Temp)
print(mean_temp)
#ii)extract first five rows
first_five_rows= head(data)
print(first_five_rows)
#iii) extract all except temperature and wind
selected_columns= airquality[, !(names(airquality) %in% c("Temp", "Wind"))]
print(selected_columns)
#iv.Which was the coldest day during the period?
coldest_day =airquality[which.min(airquality$Temp), ]
print(coldest_day)
#v.How many days was the wind speed greater than 17 mph? 
wind_gt_17_count <- sum(airquality$Wind > 17)
print(wind_gt_17_count)