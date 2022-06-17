# create a function to read csv files from Funny Joe

read.funny <- function(file, header = FALSE, sep = "?", quote = "\"", 
                       dec = "*", row.names = TRUE, skip = 3, ...) {
  read.table(file = file, header = header, sep = sep, quote = quote, 
             dec = dec, row.names = row.names, skip = skip, ...)
}
