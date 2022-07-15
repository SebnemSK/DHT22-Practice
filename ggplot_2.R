# ggplot with iris dataset

# Basic plot
ggplot(iris, aes(x = Sepal.Length, y = Petal.Length))+
  geom_point()

# Add color to points
# Basic plot
ggplot(iris, aes(x = Sepal.Length, y = Petal.Length))+
  geom_point(aes(col=Species))
