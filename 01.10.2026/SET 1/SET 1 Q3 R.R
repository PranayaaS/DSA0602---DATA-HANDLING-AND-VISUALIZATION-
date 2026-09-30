# Create dataset for Set 4
inventory_data <- data.frame(
  Product_ID = c(1, 2, 3, 4, 5),
  Product_Name = c("Product A", "Product B", "Product C", "Product D", "Product E"),
  Category = c("Electronics", "Clothing", "Electronics", "Appliances", "Clothing"),
  Quantity_Available = c(250, 175, 300, 200, 220),
  Price = c(20, 15, 18, 25, 12)
)

print(inventory_data)

# 3. Scatter Plot for Price vs Quantity Available
plot(inventory_data$Price, inventory_data$Quantity_Available, 
     col = "red", 
     pch = 19, 
     cex = 1.5,
     xlab = "Product Price ($)", 
     ylab = "Quantity Available", 
     main = "Product Price vs. Quantity Available")

# Add a trend line
abline(lm(Quantity_Available ~ Price, data = inventory_data), col = "blue", lwd = 2)