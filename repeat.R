# Repeat loops

# prompt user for a number
repeat {
  mynum <- readline(prompt = "Please enter a number: ")

  mynum <- as.numeric(mynum)
  if(is.na(mynum)) {
    print("Error")
  }
  else {
    # If there is no 'break' command, repeat loops are infinite!
    break
  }
}
