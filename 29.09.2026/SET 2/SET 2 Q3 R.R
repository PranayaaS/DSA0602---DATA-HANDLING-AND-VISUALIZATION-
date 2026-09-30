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

# Categorize ages into groups
customer_data$Age_Group <- cut(customer_data$Age, 
                               breaks = c(20, 30, 40, 50), 
                               labels = c("20-29", "30-39", "40-49"))

# Create a contingency table
age_satisfaction_table <- table(customer_data$Satisfaction_Score, customer_data$Age_Group)

# 3. Stacked Bar Chart
barplot(age_satisfaction_table, 
        col = c("coral", "lightgreen", "skyblue"), 
        xlab = "Age Group", 
        ylab = "Count", 
        main = "Satisfaction Scores by Age Group",
        legend.text = TRUE, 
        args.legend = list(title = "Score", x = "topright"))
