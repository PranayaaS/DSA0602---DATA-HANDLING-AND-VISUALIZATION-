# Create dataset for Set 2
customer_data <- data.frame(
  Customer_ID = c(1, 2, 3, 4, 5),
  Age = c(25, 30, 35, 28, 40),
  Satisfaction_Score = c(4, 5, 3, 4, 5),
  Feedback = c(
    "Great product, excellent quality and fast delivery!",
    "Amazing service, loved the fast delivery and friendly support.",
    "Average experience, product quality could be improved.",
    "Good quality overall, reasonable pricing and good service.",
    "Excellent experience! Highly recommended, super fast delivery."
  )
)

print(customer_data)
# 1. Histogram for Age Distribution
hist(customer_data$Age, 
     col = "lightblue", 
     border = "black",
     xlab = "Age", 
     ylab = "Frequency", 
     main = "Distribution of Customer Ages",
     breaks = 5)