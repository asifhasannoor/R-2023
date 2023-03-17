# This file is created on 2023-03-16

# The main aim to draw bangladesh map in R language
# Load the necessary libraries
library(readxl)
library(ggplot2)
library(dplyr)

# Set the working directory to ~/CODE/R/2023/ASSETS
setwd("~/CODE/R/2023/ASSETS")

# Read in the CSV file and sheet "2"
sales_data <- read_excel("mpo_wise_productivity.xls", sheet = "2")

# Convert the "year" column to a date object
sales_data$year <- as.Date(paste0(sales_data$year, "-01-01"))

# Create the plot
ggplot(sales_data, aes(x = year, y = sales_data$net_sales, color = "red")) +
  geom_line(size = 1.2) +
  scale_x_date(date_breaks = "1 year", date_labels = "%Y") +
  labs(title = "Sales Timeline", x = "Year", y = "Total Sales") +
  theme_classic()


