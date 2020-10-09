###########################
#  IN-CLASS ASSIGNMENT 9  #
###########################

#Install sqldf package
install.packages("sqldf")

#Load sqldf package
library(sqldf)
library(tidyverse)

#Set working directory (point to folder where you have NHANES csv files)
setwd("C:/Users/fengl/Desktop/p8180_sqldf")

#Import the NHANES demographics csv file and call it "demo"
demo = read.csv("NHANES_Demographics.csv")

#Import the NHANES triglycerides csv file and call it "tri"
tri = read.csv("NHANES_Triglycerides.csv")

#Show the first few records of each dataframe to identify any common fields between them
head(demo)
head(tri)

#1. Write a query that would allow you to fill out table 1 and assign the results to an object called table1
table1 = sqldf("SELECT Race_Hispanic_origin_w_NH_Asian AVG(Age_in_years_at_screening) AS avg_age FROM demo GROUP BY Race_Hispanic_origin_w_NH_Asian;")


#2. Show the distribution of race by gender and display the race/gender combinations from highest to lowest 
#   frequency.  Note: when using SQL in R, you *can* refer to column aliases outside of the SELECT clause.



#3. Count the number of women who were pregnant at the time of screening.  Use the column alias preg_at_screen.


    
#4. How many men refused to provide annual household income?
    


#5. What is the mean LDL level (mg/dL) for men and women?  Use column alias mean_ldl and round results to 
#   1 decimal place.  
    

    
#6. Display the minimum and maximum triglyceride levels (mmol/L) for each race.  Use column aliases min_tri and max_tri.
  

    
#7. Create a new data frame that can be used for future analyses that combines all demographic data and any 
#   matching triglyceride data.  Call it demo_tri.
    

