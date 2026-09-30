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

# 2. Pie Chart for Satisfaction Scores
score_counts <- table(customer_data$Satisfaction_Score)
pie_labels <- paste("Score", names(score_counts), ":", score_counts)

pie(score_counts, 
    labels = pie_labels, 
    col = rainbow(length(score_counts)), 
    main = "Distribution of Customer Satisfaction Scores")