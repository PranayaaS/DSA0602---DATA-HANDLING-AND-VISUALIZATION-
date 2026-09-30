# Create dataset for Set 3
employee_data <- data.frame(
  Employee_ID = c(1, 2, 3, 4, 5),
  Department = factor(c("Sales", "HR", "Marketing", "Sales", "HR")),
  Years_of_Service = c(5, 3, 7, 4, 2),
  Performance_Score = c(85, 92, 78, 90, 76)
)

print(employee_data)

# 3. Scatter Plot for Years of Service vs Performance Score
plot(employee_data$Years_of_Service, employee_data$Performance_Score, 
     col = "red", 
     pch = 19, 
     cex = 1.5,
     xlab = "Years of Service", 
     ylab = "Performance Score", 
     main = "Years of Service vs. Performance Score")

# Add a trend line
abline(lm(Performance_Score ~ Years_of_Service, data = employee_data), col = "blue", lwd = 2)