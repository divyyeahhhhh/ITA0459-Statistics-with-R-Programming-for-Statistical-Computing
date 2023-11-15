usdataset=datasets::USArrests
create=as.data.frame(usdataset)
print(create)
#(i)a. Explore the summary of Data set, like number of Features and its type. Find the number 
#of records for each feature. Print the statistical feature of data
summarydata=str(usdataset)
print(summarydata)
statsitical=summary(usdataset)
print(statsitical)
#b. Print the state which saw the largest total number of rape
max_rape=usdataset[which.max(usdataset$Rape), ]
print(max_rape)
#c. Print the states with the max & min crime rates for murder
max_murder_state=usdataset[which.max(usdataset$Murder), ]
print(max_murder_state)
min_murder_state=usdataset[which.min(usdataset$Murder), ]
print(min_murder_state)
#(ii).a. Find the correlation among the features
correlation=cor(usdataset)
print(correlation)
#b. Print the states which have assault arrests more than median of the country
median_assault <- median(usdataset$Assault)
states_higher_than_median <- rownames(USArrests)[USArrests$Assault > median_assault]
cat("States with assault arrests more than median:", states_higher_than_median, "\n")
#c. Print the states are in the bottom 25% of murder
bottom_25_percent_murder <- rownames(USArrests)[USArrests$Murder < quantile(USArrests$Murder, 0.25)]
cat("States in the bottom 25% of murder:", bottom_25_percent_murder, "\n")
#a. Create a histogram and density plot of murder arrests by US state
hist(usdataset$Murder,main="murder arrests by US state",col="blue")
density_plot=density(usdataset$Murder)
plot(density_plot,main="density of murder arrest",xlab="density")
#b. Create the plot that shows the relationship between murder arrest rate and proportion 
#of the population that is urbanised by state. Then enrich the chart by adding assault 
#arrest rates (by colouring the points from blue (low) to red (high)).
# Plot relationship between murder arrest rate and urban population with color-coded assault rates
# Plot relationship between murder arrest rate and urban population with color-coded assault rates
plot(USArrests$UrbanPop, USArrests$Murder, col=USArrests$Assault, pch=16,main="Relationship between Murder Arrest Rate, Urban Population, and Assault Arrest Rate",xlab="Urban Population", ylab="Murder Arrest Rate")
#c. Draw a bar graph to show the murder rate for each of the 50 states .
barplot(USArrests$Murder, names.arg=rownames(USArrests), main="Murder Rate by State", xlab="State", ylab="Murder Rate",col="purple")
