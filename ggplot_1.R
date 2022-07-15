# Playing with ggplot

ggplot(data = mpg) # does nothing yet
ggplot(data = mpg, mapping = aes(x=displ, y=cyl)) #still nothing..
ggplot(data = mpg, mapping = aes(x=displ, y=cyl)) +
  geom_point() #now you see me!