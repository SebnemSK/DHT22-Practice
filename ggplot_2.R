# ggplot with iris dataset

# Basic plot
ggplot(iris, aes(x = Sepal.Length, y = Petal.Length))+
  geom_point()

# Add color to points
ggplot(iris, aes(x = Sepal.Length, y = Petal.Length))+
  geom_point(aes(col=Species))

# Add smoother line
ggplot(iris, aes(x = Sepal.Length, y = Petal.Length))+
  geom_point(aes(col=Species)) +
  geom_smooth(col="orange")

# Add species specific smoothers + lm method
ggplot(iris, aes(x = Sepal.Length, y = Petal.Length))+
  geom_point(aes(col=Species))+
  geom_smooth(aes(col=Species), method="lm")

# Make color by species default for all and save it as g
g <- ggplot(iris, aes(x = Sepal.Length, 
                 y = Petal.Length,
                 col = Species))+
  geom_point()+
  geom_smooth(method="lm")

# Add scale details
g <- g + scale_color_ordinal()

# Facet by Species
g <- g + facet_wrap(~Species, nrow=3)

# Change coordinates
g <- g + coord_polar()

# Change theme to dark
g <- g + theme_dark()

# Save the plot in a png for screen
ggsaveave("Iris_plot.png", plot = g, width=6, height=10, units="cm", dpi="screen")

# Basic plot with different geoms
# Basic plot
ggplot(iris, aes(x = Sepal.Length, y = Petal.Length))+
  geom_line()
