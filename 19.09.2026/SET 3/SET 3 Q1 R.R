# Create dataset for Set 3
employee_data <- data.frame(
  Employee_ID = c(1, 2, 3, 4, 5),
  Department = factor(c("Sales", "HR", "Marketing", "Sales", "HR")),
  Years_of_Service = c(5, 3, 7, 4, 2),
  Performance_Score = c(85, 92, 78, 90, 76)
)

print(employee_data)

# 1. Line Chart for Performance Trend
plot(employee_data$Employee_ID, employee_data$Performance_Score, 
     type = "b", 
     col = "blue", 
     lwd = 2, 
     pch = 19,
     xlab = "Employee ID (Ordered by Time)", 
     ylab = "Performance Score", 
     main = "Employee Performance Trend Over Time")

grid()

# Add Legend
legend("topright", legend = c("Performance Score"), 
       col = c("blue"), lty = 1, pch = 19, lwd = 2)