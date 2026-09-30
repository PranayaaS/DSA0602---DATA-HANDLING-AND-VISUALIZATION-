# Create dataset for Set 4
inventory_data <- data.frame(
  Product_ID = c(1, 2, 3, 4, 5),
  Product_Name = c("Product A", "Product B", "Product C", "Product D", "Product E"),
  Category = c("Electronics", "Clothing", "Electronics", "Appliances", "Clothing"),
  Quantity_Available = c(250, 175, 300, 200, 220),
  Price = c(20, 15, 18, 25, 12)
)

print(inventory_data)

# 1. Bar Chart for Product Quantities
barplot(inventory_data$Quantity_Available, 
        names.arg = inventory_data$Product_Name, 
        col = "skyblue", 
        xlab = "Product Name", 
        ylab = "Quantity Available", 
        main = "Inventory Quantity per Product",
        ylim = c(0, 350))