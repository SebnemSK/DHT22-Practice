# Leap year calculation

# Get user input
year <- readline("Please enter the year: ")

# Convert user input into numeric
year <- as.numeric(year)

# Check if input is valid
if (is.na(year)) {
  print("Invalid entry.")
} else {
  
  # Calculate leap year
  
  
  ## Check for centuries first
  if (year %% 100 == 0) {
    # year is a century should be divisible by 400
    if (year %% 400 == 0) {
      print("leap year")
    } else {
      print("not a leap year")
    }
  } else {
    # year is not a century, should be divisible by 4
    if (year %% 4 == 0) {
      print("leap year")
    } else {
      print("not a leap year")
    }
  } #if-else for century
} # if-else for valid entry
