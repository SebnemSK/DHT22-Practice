#' The dataset used in this demo came from this excellent course 
#' in data cleaning hosted on Datacamp (https://www.datacamp.com/courses/cleaning-data-in-r)
#' Downloaded in May 2021

library("dplyr")
library('tidyr')

# Load weather.rds
weather <- readRDS("weather.rds")

# Verify that weather is a data.frame
class(weather)

# Check the dimensions of the data set
dim(weather)

# View the column names
names(weather)

# View the structure of the data
str(weather)

# Look at the structure using dplyr's glimpse()
dplyr::glimpse(weather)

# View a summary of the data
summary(weather)

# Take a closer look at the data by viewing the top and bottom rows
head(weather)
tail(weather)

#' This weather dataset suffers from one of the five most common 
#' symptoms of messy data: column names are values. 
#' Column names X1-X31 represent days of the month. 
#' They should be values of a variable called day.
#' pivot_longer() the columns X1:X31 as day
w2 <- pivot_longer(weather, X1:X31, names_to = "day", values_to = "value")


#' Another common symptom of messy data: values are variable names. 
#' Values in the measure column should be variables (column names) 
#' in our dataset. pivot_wider() the measure column
w3 <- pivot_wider(w2,id_cols = year:day,names_from = measure, values_from = value)

# Remove X's from day column
w3$day <- stringr::str_replace(w3$day, "X", "")

# Unite the year, month, and day columns
w4 <- unite(w3,wdate, year, month, day, sep = "-")

#w4 <- w3 %>% 
#  mutate(wdate = paste0(year,"-",month, "-", day))

# Convert date column to proper date format using lubridates's ymd()
w4$wdate <- lubridate::ymd(w4$wdate)

# Clean up empty rows, if there are any
w5 <- w4 %>% filter(!is.na(wdate))

# See what happens if we try to convert PrecipitationIn to numeric. Get rid of T values
w5$PrecipitationIn <- stringr::str_replace(w5$PrecipitationIn, "T", "0")

# See if there are any non-digit characters in columns MAx.TemperatureF through CloudCover
grepl ('\\D?', w5$MAx.TemperatureF)

# Convert characters to numeric from CloudCover:WindDirDegrees
w6 <- mutate_each(w5, funs(as.numeric), CloudCover:WindDirDegrees)

# Find rows with values greater than 100 for Max.Humidity
indexes <- which(w6$Max.Humidity > 100)

w6[indexes, ] %>% 
  select(date, Events, Max.Humidity, CloudCover:WindDirDegrees)

# Fix the error. What is the assumption?
w6$Max.Humidity[indexes] <- 100

# Find rows with values less than 0 for Mean.VisibilityMiles
indexes <- which(w6$Mean.VisibilityMiles < 0)

w6[indexes, ] %>% 
  select(date, Events, Mean.VisibilityMiles, CloudCover:WindDirDegrees)

# Fix the error. What is the assumption?
w6$Mean.VisibilityMiles[indexes] <- 10

# Count missing values
sum(is.na(w6))

# Look at histogram for  Min.TemperatureF
hist(w6$ Mean.TemperatureF)

# Compare to histogram for Min.TemperatureF
hist(w6$Meann.TemperatureF)
