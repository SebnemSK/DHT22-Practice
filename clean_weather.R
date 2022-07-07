#' The dataset used in this demo came from this excellent course 
#' in data cleaning hosted on Datacamp (https://www.datacamp.com/courses/cleaning-data-in-r)
library("dplyr")
library('tidyr')

# Load weather.rds
weather <- 

# Verify that weather is a data.frame


# Check the dimensions of the data set


# View the column names


# View the structure of the data


# Look at the structure using dplyr's glimpse()


# View a summary of the data


# Take a closer look at the data by viewing the top and bottom rows




#' This weather dataset suffers from one of the five most common 
#' symptoms of messy data: column names are values. 
#' Column names X1-X31 represent days of the month. 
#' They should be values of a variable called day.
#' pivot_longer() the columns X1:X31 as day



#' Another common symptom of messy data: values are variable names. 
#' Values in the measure column should be variables (column names) 
#' in our dataset. pivot_wider() the measure column


# Remove X's from day column


# Unite the year, month, and day columns


# Convert date column to proper date format using lubridates's ymd()


# Clean up empty rows, if there are any


# See what happens if we try to convert PrecipitationIn to numeric. Get rid of T values


# See if there are any non-digit characters in columns MAx.TemperatureF through CloudCover


# Convert characters to numeric from CloudCover:WindDirDegrees

# Find rows with values greater than 100 for Max.Humidity

# Fix the error. What is the assumption?

# Find rows with values less than 0 for Mean.VisibilityMiles

# Fix the error. What is the assumption?

# Count missing values

# Look at histogram for  Min.TemperatureF

# Compare to histogram for Mean.TemperatureF

