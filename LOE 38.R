library(ggplot2)
datatitanic=datasets::Titanic

# Convert the dataset to a data frame
titanic_df <- as.data.frame(datatitanic)
print(titanic_df)

# a. Draw a Bar chart to show details of "Survived" on the Titanic based on passenger Class
bar_chart_class <- ggplot(titanic_df, aes(x = Class, fill = factor(Survived))) +
  geom_bar(position = "dodge", stat = "count") +
  labs(title = "Survival on Titanic by Passenger Class",
       x = "Passenger Class",
       y = "Count",
       fill = "Survived")

print(bar_chart_class)

# b. Modify the above plot based on the gender of people who survived
bar_chart_gender <- ggplot(titanic_df, aes(x = Class, fill = factor(Survived), group = Sex)) +
  geom_bar(position = "dodge", stat = "count") +
  labs(title = "Survival on Titanic by Passenger Class and Gender",
       x = "Passenger Class",
       y = "Count",
       fill = "Survived") +
  facet_grid(.~Sex)

print(bar_chart_gender)

# c. Draw a histogram plot to show the distribution of the feature "Age"
histogram_age <- ggplot(titanic_df, aes(x = Age)) +
  geom_bar(binwidth = 5, fill = "blue", color = "black", alpha = 0.7) +
  labs(title = "Distribution of Age on Titanic",
       x = "Age",
       y = "Count")

print(histogram_age)