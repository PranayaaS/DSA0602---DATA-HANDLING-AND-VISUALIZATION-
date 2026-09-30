# Create the dataset for Set 1
monthly_sales <- data.frame(
  Month = factor(c("January", "February", "March", "April", "May"), 
                 levels = c("January", "February", "March", "April", "May")),
  Sales = c(15000, 18000, 22000, 20000, 23000),
  Ad_Budget = c(2000, 2500, 3200, 2800, 3500)  # Added advertising budget for Q3
)

# View the created dataset
print(monthly_sales)
# 1. Line Chart for Monthly Sales
plot(monthly_sales$Month, monthly_sales$Sales, 
     type = "b", 
     col = "blue", 
     lwd = 2, 
     pch = 19,
     xlab = "Month", 
     ylab = "Sales (in $)", 
     main = "Monthly Sales Trend")
grid()
# Sample yearly sales data for top products
product_sales <- c(120000, 95000, 80000, 65000, 50000)
names(product_sales) <- c("Product A", "Product B", "Product C", "Product D", "Product E")
