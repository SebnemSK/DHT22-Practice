# While loops

# prompt user for a number

mynum <- readline(prompt = "Please enter a number: ")
  
mynum <- as.numeric(mynum)
while(is.na(mynum)) {
  print("Error")
  mynum <- readline(prompt = "Please enter a number: ")
  
  mynum <- as.numeric(mynum)
} #end while invalid entry
print("great")
