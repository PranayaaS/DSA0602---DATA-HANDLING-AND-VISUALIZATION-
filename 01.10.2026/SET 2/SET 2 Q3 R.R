# Create dataset for Set 5
website_data <- data.frame(
  Date = as.Date(c("2023-01-01", "2023-01-02", "2023-01-03", "2023-01-04", "2023-01-05")),
  Page_Views = c(1500, 1600, 1400, 1650, 1800),
  CTR = c(2.3, 2.7, 2.0, 2.4, 2.6),
  Likes = c(120, 150, 100, 130, 170),
  Shares = c(45, 60, 30, 50, 65),
  Comments = c(25, 35, 15, 20, 40)
)

print(website_data)

# Combine interaction variables into a matrix
interactions <- rbind(website_data$Likes, website_data$Shares, website_data$Comments)

# 3. Stacked Area Chart
barplot(interactions, 
        names.arg = format(website_data$Date, "%b %d"), 
        col = c("deepskyblue", "lightgreen", "coral"), 
        xlab = "Date", 
        ylab = "Interaction Count", 
        main = "Distribution of User Interactions Over Time",
        legend.text = c("Likes", "Shares", "Comments"),
        args.legend = list(title = "Interaction Type", x = "topleft"))