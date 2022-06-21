# String functions
# Data 
fruits <- c("berry", "banana", "apple", "orange", "mango", "avocado", "kiwi", "coco?")

adresses <- c("12 main st. a7r 3b2 someplace", "24 side st. unit 5 k2y3n4 otherplace", 
              "1234greeen street seasidetown", "some ave3k3n56peaks")

nchar(adresses[1])
nchar(fruits[1])

strsplit(adresses[1], " ")
strsplit(adresses[1],split = "")

substr(adresses[1], 13, 13+7)


### Date and Time functions

today <- Sys.Date()
now <- Sys.time()

typeof(now)
class(now)

nowlt <- as.POSIXlt(now)

adate <- "20/6/22"
adate_dt <- as.Date(adate)

adate_posix <- as.POSIXct(adate, format = "%d/%m/%y")
