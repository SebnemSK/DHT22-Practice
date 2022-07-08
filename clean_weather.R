#' The dataset used in this demo came from this excellent course 
#' in data cleaning hosted on Datacamp 
#' (https://www.datacamp.com/courses/cleaning-data-in-r)
#' Downloaded in May 2021

library("dplyr")
library("tidyr")

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
glimpse(weather)

# View a summary of the data
summary(weather)

# Take a closer look at the data by viewing the top 
# and bottom rows
head(weather)
tail(weather)

# Find out the distinct values in measure column
weather %>%
  select(measure) %>%
  unique()

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
w3$day <- stringr::str_remove(w3$day, "X")

# Unite the year, month, and day columns
w4 <- unite(w3, wdate, year, month, day, sep = "-")

# Convert date column to proper date format using 
# lubridates's ymd()
w4$wdate <- lubridate::ymd(w4$wdate)

# Clean up empty rows, if there are any
w5 <- w4 %>%
  filter(!is.na(wdate))

# See what happens if we try to convert 
# PrecipitationIn to numeric. Get rid of T values
 
as.numeric(w5$PrecipitationIn)
w5$PrecipitationIn <- stringr::str_replace(w5$PrecipitationIn, "T", "0")
w5$PrecipitationIn <-as.numeric(w5$PrecipitationIn)

# See if there are any non-digit characters in columns PrecipitationIn through CloudCover
grepl("\\D", w5$PrecipitationIn)

# Convert characters to numeric from CloudCover:WindDirDegrees
w6 <- w5 %>%
  mutate(across(Max.TemperatureF:CloudCover, as.numeric)) %>%
  mutate(WindDirDegrees=as.numeric(WindDirDegrees))
  
# Summarize the data
summary(w6)

# Find rows with values greater than 100 for Max.Humidity
w6 %>% filter(Max.Humidity > 100)
  
# Fix the error. What is the assumption?
# Entry error: 1000 instead of 100
w6 <- w6 %>% 
  mutate(Max.Humidity = case_when(
    Max.Humidity > 100 ~ 100,
    TRUE ~ Max.Humidity))
  
#' Just for fun... Create a new column for Humidity
#' 0-25 is DRY
#' 26-55 is NORMAL
#' +56 is HUMID

w_fun <- w6 %>% 
  mutate(Humidity = case_when(
    Max.Humidity  < 26 ~ "DRY",
    Max.Humidity < 56 ~ "NORMAL",
    TRUE ~ "HUMID")) %>%
  select(wdate, Max.Humidity, Humidity)

  
# Find rows with values less than 0 for Mean.VisibilityMiles
w6 %>% filter(Mean.VisibilityMiles < 0)
  
# Fix the error. What is the assumption?
# Entry error. Both max and min are 10
w6 <- w6 %>% mutate(Mean.VisibilityMiles =
                case_when(
                  Mean.VisibilityMiles < 0 ~ 10,
                  TRUE ~ Mean.VisibilityMiles
                ))

# Count missing values
sum(is.na(w6))
# Clean days with missing values
weather_clean <- w6 %>%
  filter(!is.na(Max.TemperatureF))

# Look at histogram for  Min.TemperatureF


# Compare to histogram for Mean.TemperatureF

