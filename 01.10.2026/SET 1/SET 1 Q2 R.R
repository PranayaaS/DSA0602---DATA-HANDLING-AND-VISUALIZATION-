# Create dataset for Set 4
inventory_data <- data.frame(
  Product_ID = c(1, 2, 3, 4, 5),
  Product_Name = c("Product A", "Product B", "Product C", "Product D", "Product E"),
  Category = c("Electronics", "Clothing", "Electronics", "Appliances", "Clothing"),
  Quantity_Available = c(250, 175, 300, 200, 220),
  Price = c(20, 15, 18, 25, 12)
)

print(inventory_data)

# Create contingency table of Product vs Category
category_table <- table(inventory_data$Category, inventory_data$Product_Name)

# Multiply by quantities to represent actual stock values
category_qty_matrix <- t(sapply(unique(inventory_data$Category), function(cat) {
  sapply(inventory_data$Product_Name, function(prod) {
    val <- inventory_data$Quantity_Available[inventory_data$Product_Name == prod & inventory_data$Category == cat]
    if (length(val) == 0) return(0) else return(val)
  })
}))

# 2. Stacked Bar Chart
barplot(category_qty_matrix, 
        col = c("darkorange", "purple", "seagreen"), 
        xlab = "Product Name", 
        ylab = "Quantity", 
        main = "Product Quantities Stacked by Category",
        legend.text = TRUE, 
        args.legend = list(title = "Category", x = "topright"))