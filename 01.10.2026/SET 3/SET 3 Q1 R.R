# Create dataset for Set 6
product_sales_data <- data.frame(
  Product_ID = c(1, 2, 3),
  Product_Name = c("Product A", "Product B", "Product C"),
  January_Sales = c(2000, 1500, 1200),
  February_Sales = c(2200, 1800, 1400),
  March_Sales = c(2400, 1600, 1100)
)

print(product_sales_data)

# Convert sales columns into a matrix for grouped plotting
sales_matrix <- as.matrix(product_sales_data[, c("January_Sales", "February_Sales", "March_Sales")])
rownames(sales_matrix) <- product_sales_data$Product_Name

# 1. Grouped Bar Chart
barplot(sales_matrix, 
        beside = TRUE, 
        col = c("steelblue", "coral", "mediumseagreen"), 
        xlab = "Month", 
        ylab = "Sales (in $)", 
        main = "First Quarter Product Sales (Grouped)",
        names.arg = c("January", "February", "March"),
        ylim = c(0, 3000),
        legend.text = rownames(sales_matrix),
        args.legend = list(title = "Products", x = "topleft"))