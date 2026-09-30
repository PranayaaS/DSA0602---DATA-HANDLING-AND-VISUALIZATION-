# Create the dataset for Set 1
monthly_sales <- data.frame(
  Month = factor(c("January", "February", "March", "April", "May"), 
                 levels = c("January", "February", "March", "April", "May")),
  Sales = c(15000, 18000, 22000, 20000, 23000),
  Ad_Budget = c(2000, 2500, 3200, 2800, 3500)  # Added advertising budget for Q3
)

# 3. Scatter Plot for Ad Budget vs Sales
plot(monthly_sales$Ad_Budget, monthly_sales$Sales, 
     col = "red", 
     pch = 19, 
     cex = 1.5,
     xlab = "Advertising Budget (in $)", 
     ylab = "Monthly Sales (in $)", 
     main = "Relationship Between Ad Budget and Sales")

# Add a trend line
abline(lm(Sales ~ Ad_Budget, data = monthly_sales), col = "darkgreen", lwd = 2)
install.packages("shiny")
library(shiny)

ui <- fluidPage(
  titlePanel("Set 1: Interactive Monthly Sales Dashboard"),
  sidebarLayout(
    sidebarPanel(
      sliderInput("sales_filter", 
                  "Minimum Sales Filter ($):", 
                  min = 10000, 
                  max = 25000, 
                  value = 15000, 
                  step = 1000)
    ),
    mainPanel(
      plotOutput("linePlot"),
      plotOutput("barPlot")
    )
  )
)

server <- function(input, output) {
  filtered_data <- reactive({
    subset(monthly_sales, Sales >= input$sales_filter)
  })
  
  output$linePlot <- renderPlot({
    data <- filtered_data()
    plot(data$Month, data$Sales, type = "b", col = "blue", lwd = 2, pch = 19,
         xlab = "Month", ylab = "Sales ($)", main = "Monthly Sales Trend")
    grid()
  })
  
  output$barPlot <- renderPlot({
    barplot(product_sales, col = "steelblue", 
            xlab = "Products", ylab = "Sales ($)", 
            main = "Top-Selling Products")
  })
}


shinyApp(ui = ui, server = server)