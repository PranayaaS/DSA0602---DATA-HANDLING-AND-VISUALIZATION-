# Create dataset for Set 3
employee_data <- data.frame(
  Employee_ID = c(1, 2, 3, 4, 5),
  Department = factor(c("Sales", "HR", "Marketing", "Sales", "HR")),
  Years_of_Service = c(5, 3, 7, 4, 2),
  Performance_Score = c(85, 92, 78, 90, 76)
)

print(employee_data)

# Count employees per department
dept_counts <- table(employee_data$Department)

# 2. Bar Chart for Department Distribution
barplot(dept_counts, 
        col = c("darkgreen", "orange", "purple"), 
        xlab = "Department", 
        ylab = "Number of Employees", 
        main = "Employee Distribution Across Departments",
        ylim = c(0, 3))