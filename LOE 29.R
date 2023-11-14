# Load the Iris dataset
data(iris)

# (i) Find dimension, Structure, Summary statistics, Standard Deviation of all features.
# Dimension of the dataset
dim(iris)

# Structure of the dataset
str(iris)

# Summary statistics of all features
summary(iris)

# Standard Deviation of all features
sapply(iris[, 1:4], sd)

# (ii) Find mean and standard deviation of features grouped by three species of Iris flowers.
# Mean of features grouped by species
aggregate(. ~ Species, data = iris, FUN = mean)

# Standard Deviation of features grouped by species
aggregate(. ~ Species, data = iris, FUN = sd)

# (iii) Find quantile value of sepal width and length
quantile(iris$Sepal.Length, probs = c(0.25, 0.5, 0.75))
quantile(iris$Sepal.Width, probs = c(0.25, 0.5, 0.75))

# (iv) Create a new data frame named iris1 with a new column "Sepal.Length.Cate" that categorizes "Sepal.Length" by quantile
iris1 = iris
iris1$Sepal.Length.Cate <- cut(iris$Sepal.Length, breaks = quantile(iris$Sepal.Length, probs = c(0, 0.25, 0.5, 0.75, 1)), labels = c("Q1", "Q2", "Q3", "Q4"))
print(iris1)
# (v) Average value of numerical variables by two categorical variables: Species and Sepal.Length.Cate
aggregate(. ~ Species + Sepal.Length.Cate, data = iris1, FUN = mean)

# (vi) Average mean value of numerical variables by Species and Sepal.Length.Cate
aggregate(. ~ Species + Sepal.Length.Cate, data = iris1, FUN = mean, FUN.aggregate = mean)

# Load the reshape2 package
library(reshape2)

# Melt the dataset
melted_data <- melt(iris1, id.vars = c("Species", "Sepal.Length.Cate"))

# Create the Pivot Table
pivot_table <- dcast(melted_data, Species + Sepal.Length.Cate ~ variable, fun.aggregate = mean)

# Display the Pivot Table
print(pivot_table)

