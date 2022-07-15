# Play with ggalt package
# Encircle a group of data points

data("midwest", package = "ggplot2")

library(ggplot2)
library(ggalt)
# define points to circle
mw_mark <- midwest[midwest$poptotal > 350000 &
                     midwest$poptotal <= 500000 &
                     midwest$area > 0.01 &
                     midwest$area < 0.1, ]
# Plot
ggplot(midwest, aes(x=area, y=poptotal)) +   
  # draw points  
  geom_point(aes(col=state, size=popdensity)) + 
  # encircle  
  geom_encircle(aes(x=area, y=poptotal),   
                data=mw_mark, 
                color="red",  
                size=2,  
                expand=0.08) +   
  labs(y="Population",   
       x="Area",   
       title="Scatterplot + Encircle")
