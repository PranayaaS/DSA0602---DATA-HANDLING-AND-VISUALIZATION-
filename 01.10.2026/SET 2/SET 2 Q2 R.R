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

# Sort data by CTR in descending order
sorted_ctr <- website_data[order(-website_data$CTR), ]

# 2. Bar Chart for Highest CTR Days
barplot(sorted_ctr$CTR, 
        names.arg = format(sorted_ctr$Date, "%b %d"), 
        col = "orange", 
        xlab = "Date", 
        ylab = "Click-Through Rate (%)", 
        main = "Top Days by Click-Through Rate (CTR)",
        ylim = c(0, 3.5))