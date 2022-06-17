# create a function to read csv files from Funny Joe

read.funny <- function(file, header = FALSE, sep = "?", quote = "\"", 
                       dec = "*", row.names = TRUE, skip = 3, ...) {
  read.table(file = file, header = header, sep = sep, quote = quote, 
             dec = dec, row.names = row.names, skip = skip, ...)
}

# Print hello
hello <- function() {
  print("Hello world!")
}

# square function
sqr <- function(x) {
  print(paste("The square of", x, "is", x**2))
}

#' Function cube()
#' ----------------------------------------------
#' Cube with a default value of 1
#' @param : vector or dataframe
#' @output: log transformation of the input object

cube <- function(x=1) {
  x_sqr <- x**3
  return(x_sqr)
}

#' Function fun_log()
#' ----------------------------------------------
#' @param : vector or dataframe
#' @output: log transformation of the input object

fun_log <- function(x){
  # log2(x)
  x <- log2(x)
  return(x)
}

# histogram function

fun_hist <- function(x, lbl="Histrogram of x") {
  hist(x, main = lbl, col = "#be81ff")
}

# Name randomizer - pick a random name from a list of names

heyyou <- function() {
  #set.seed(12345)
  st_names <- c("Olivia", "Danni", "Papiha",  "Bree",  "Alana",  "Deweena",  
                "Muhammad",  "Crystal",  "Imran",  "Ashley",   "Ning",  
                "Sharjeel")
  i <- sample(1:12,1)
  st_names[i]
}

# convert between C and F

smarttemp <- function(t, to='F'){
  if (to == 'F' | to == 'f'){
    # C to F
    (9/5)*t+32
  } else if (to == 'C' | to == 'c'){
    # F to C
    (5/9)*(t-32)
  } else {
    return(NA)
  }
}


