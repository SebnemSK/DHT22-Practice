# ggplot extras

# plot with many overlapping points
ggplot(mpg, aes(cty, hwy)) + 	
  geom_point() +   
  labs(y="hwy", 
       x="cty", 
       title="Scatterplot with overlapping points")

# Same plot, jittered points
ggplot(mpg, aes(cty, hwy)) +
  geom_jitter(width = .5, size=1) +
  labs(y="hwy",
       x="cty",
       title="Jittered Points")

# Circles let you convey additional info (x+y+count)
g <- ggplot(mpg, aes(cty, hwy)) +
  geom_count(col="tomato3", show.legend=F) +
  labs(y="hwy",
       x="cty",
       title="Counts Plot")
# Bubbles let you convey 4 pieces of info:
# x + y + count + categorical variable
ggplot(mpg, aes(displ, cty)) +
  geom_jitter(aes(col=manufacturer, size=hwy)) +
  labs(title="Bubble chart")
