# Math functions

# rowSums & colSums

ua <- UCBAdmissions
# Creates dept vs Gender summation
col_ua <- colSums(ua)
# Creates Dept summation
col_ua2 <- colSums(ua, dims = 2)

# Calculates admission summation
row_ua <- rowSums(ua)
# calculates Admission vs Gender summation
row_ua2 <- rowSums(ua, dims = 2)


# Data Structures

myvector <- seq(from = 32, by = 7, length.out = 10)

# This is a sequence from 1 to 10
seq(from = 1, by = 1, along.with = myvector)
# This ^ equivalent to
seq_along(myvector)

rep(5, 5)
rep("HI", 3)
rep(myvector, 2)

sort(myvector)
sort(myvector, decreasing = T)

# Check for data type
is.numeric(myvector)
is.character(myvector)

# Cast into another datatype
mycharvector <- as.character(myvector)

# Insert number 10 into 5th position in myvector
append(myvector, 10, after = 4)

lettrs <- c("a", "c", "d")
rev(lettrs)
