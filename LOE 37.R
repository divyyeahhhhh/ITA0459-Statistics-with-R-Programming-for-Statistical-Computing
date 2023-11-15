set.seed(123)
data = data.frame(Weight = rnorm(100, mean = 50, sd = 5),
  Time = rnorm(100, mean = 10, sd = 2),
  Diet = sample(1:3, 100, replace = TRUE))
model =lm(Weight ~ Time + Diet, data = data)
summary(model)
# Predict weight for Time=10 and Diet=1
new_data = data.frame(Time = 10, Diet = 1)
predicted_weight = predict(model, newdata = new_data)
cat("Predicted Weight:", predicted_weight, "\n")
# Evaluate the model by calculating the error
actual_weight <- data$Weight
predicted_weights <- predict(model, newdata = data)
error <- actual_weight - predicted_weights
# Print the error
cat("Mean Absolute Error:", mean(abs(error)), "\n")
