# Repeat loops

# prompt user for a number
repeat {
  mynum <- readline(prompt = "Please enter a number: ")

  mynum <- as.numeric(mynum)
  if(is.na(mynum)) {
    print("Error")
  }
  else {
    break
  }
}
