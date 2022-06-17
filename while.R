# While loops
# Load my functions to memory
source("helper_functions.R")
# prompt user for a number

mynum <- readline(prompt = "Please enter a number: ")
  
mynum <- as.numeric(mynum)
while(is.na(mynum)) {
  print("Error")
  mynum <- readline(prompt = "Please enter a number: ")
  
  mynum <- as.numeric(mynum)
} #end while invalid entry
print("great")

read.funny(file = "mypath/funnyfile.csv")