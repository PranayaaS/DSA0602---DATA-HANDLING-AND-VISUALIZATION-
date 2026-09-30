# Create dataset for Set 6
product_sales_data <- data.frame(
  Product_ID = c(1, 2, 3),
  Product_Name = c("Product A", "Product B", "Product C"),
  January_Sales = c(2000, 1500, 1200),
  February_Sales = c(2200, 1800, 1400),
  March_Sales = c(2400, 1600, 1100)
)

print(product_sales_data)

# 2. Stacked Bar/Area Chart for Overall Sales Trend
barplot(sales_matrix, 
        beside = FALSE, 
        col = c("steelblue", "coral", "mediumseagreen"), 
        xlab = "Month", 
        ylab = "Total Sales (in $)", 
        main = "Overall Product Sales Trend (Stacked)",
        names.arg = c("January", "February", "March"),
        legend.text = rownames(sales_matrix),
        args.legend = list(title = "Products", x = "topleft"))