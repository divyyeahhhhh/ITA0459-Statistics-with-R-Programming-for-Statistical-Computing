data=datasets::airquality
model=lm(Ozone~Solar.R,data=airquality)
print(model)
a=airquality$Ozone
b=airquality$Solar.R
plot(b,a,main = "SCATTER PLOT BETWEEN OZONE AND SOLAR.R",xlab = "SOLAR.R",ylab = "OZONE",col=c("blue","pink"),pch=19,abline(model,col="green"))
missing_percent= colMeans(is.na(data)) * 5
threshold = 10
cols_to_keep = names(missing_percent[missing_percent <= threshold])
data = data[complete.cases(data[cols_to_keep]), ]
data = replace(data, is.na(data), colMeans(data, na.rm = TRUE))
print(data)