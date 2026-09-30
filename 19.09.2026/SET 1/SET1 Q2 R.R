# Create the dataset for Set 1
monthly_sales <- data.frame(
  Month = factor(c("January", "February", "March", "April", "May"), 
                 levels = c("January", "February", "March", "April", "May")),
  Sales = c(15000, 18000, 22000, 20000, 23000),
  Ad_Budget = c(2000, 2500, 3200, 2800, 3500)  # Added advertising budget for Q3
)

# 2. Bar Chart for Top-Selling Products
barplot(product_sales, 
        col = "steelblue", 
        xlab = "Products", 
        ylab = "Total Sales (in $)", 
        main = "Top-Selling Products of the Year",
        ylim = c(0, 140000))
