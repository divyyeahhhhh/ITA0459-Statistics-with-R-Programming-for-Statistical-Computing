# Install and load necessary packages
install.packages(c("dplyr", "reshape2"))
library(dplyr)
library(reshape2)

# Load the ChickWeight dataset
data=datasets::ChickWeight
datadf=data.frame(data)
print(datadf)
# (i) Order the data frame, group by diet, and extract the last 6 records
order_datset=sort(datadf)
print(order_datset)
# (ii) (a) Perform melting function
melted_data <- melt(ChickWeight, id.vars = c("Chick", "Time", "Diet"))
print(melted_data)
# (ii) (b) Perform cast function to display the mean value of weight grouped by Diet
cast_mean <- dcast(melted_data, Diet ~ variable, mean)
print(cast_mean)
# (ii) (c) Perform cast function to display the mode of weight grouped by Diet
cast_mode <- dcast(melted_data, Diet ~ variable, mode)
print(cast_mode)

