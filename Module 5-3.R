#Install and load the sqldf package
install.packages("sqldf")
library(sqldf)

#Set the working directory so R knows where to look for the files you're importing
setwd("ADD YOUR FILE PATH WITHIN THESE QUOTES AND USE FORWARD SLASHES INSTEAD OF BACKSLASHES AS SEPARATORS")

#Import the csv files
crashes <- read.csv("crashes.csv")
roads <- read.csv("roads.csv")

#Display the first few records of each dataset
head(crashes)
head(roads)

#Left join roads to any respective crashes and assign results to an object called left_join
left_join <- sqldf("ADD YOUR QUERY WITHIN THESE QUOTES")

#Find the total number of crashes per road across all years
crash_totals <-sqldf("ADD YOUR QUERY WITHIN THESE QUOTES")

#Display the results of the previous query
crash_totals