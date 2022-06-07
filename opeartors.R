# Mod is the remainder of a division

5 %% 2
# gives you 1

# integer division (no decimal points)
5 %/% 2

# and opeartor
T & T
T & F
F & T
F & F

# OR operator
T | T
T | F
F | T
F | F

1:5 -> nums

2 %in% nums

library(magrittr)
# long chain of calculations
a <- 1:5
b <- sqrt(a)

# piped version
1:5 %>%
  sqrt()
  
