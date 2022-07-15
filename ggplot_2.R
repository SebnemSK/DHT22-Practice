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
