# Load the required library
library(caret)
# Load the Iris dataset
data("iris")
# Set a random seed for reproducibility
set.seed(123)
# Split the dataset into training and testing sets (80% training, 20% testing)
inTrain <- createDataPartition(iris$Species, p = 0.8, list = FALSE)
training_data <- iris[inTrain, ]
testing_data <- iris[-inTrain, ]
# Build a logistic regression model
model <- glm(Species ~ Petal.Length + Petal.Width, data = training_data, family = binomial)
# Make predictions on the test data
predictions <- predict(model, newdata = testing_data, type = "response")
# Convert predicted probabilities to class labels
predicted_classes <- ifelse(predictions > 0.5, "versicolor", "not versicolor")
# Create a confusion matrix
confusion_matrix <- table(predicted = predicted_classes, actual = testing_data$Species)
# Print the confusion matrix
print(confusion_matrix)
