data=datasets::ChickWeight
boxplot(data$weight,data$Diet,main="BOX PLOT",xlab="WEIGHT",ylab="DIET",col="pink")
diet_data= ChickWeight[ChickWeight$Diet == 1, ]
print(diet_data)
hist(diet_data$weight,main = "HIST OF WEIGHT AND DIET-1",col = "red")
plot(data$weight,data$Time,main = "SCATTER PLOT OF WEIGHT AND TIME",xlab="WEIGHT",ylab = "TIME",type="p",pch=19,col=c("pink","cyan"))
