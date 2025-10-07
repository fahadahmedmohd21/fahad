
# Load required libraries
library(tidyverse)   

# Load the dataset
coffee <- read_csv("coffe.csv")

head(coffee)   # shows first few rows
str(coffee)   

# Visualization 1: Sales count by coffee type

ggplot(coffee, aes(x = coffee_name)) +
  geom_bar(fill = "steelblue") +
  labs(
    title = "Number of Sales by Coffee Type",
    x = "Coffee Type",
    y = "Count of Sales"
  ) +
  theme_minimal()


# Visualization 2: Average money spent by Time of Day

ggplot(coffee, aes(x = Time_of_Day, y = money, fill = Time_of_Day)) +
  stat_summary(fun = "mean", geom = "bar") +
  labs(
    title = "Average Spending by Time of Day",
    x = "Time of Day",
    y = "Average Money Spent"
  ) +
  theme_minimal()
