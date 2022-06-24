# Pipe examples
library(dplyr)

df <- iris

# Label "short" and "tall" based on sepal length
# label "small" and "large" based on petal length
# Filter out flowers with average sepal length
# Create a table summarizing avg pet and sep lengths for all labels

final_solution <- df %>%
  mutate(height = ifelse(Sepal.Length > mean(Sepal.Length), "tall","short")) %>%
  mutate(size = ifelse(Petal.Length > mean(Petal.Length), "large","small")) %>%
  filter(Sepal.Length != mean(Sepal.Length)) %>%
  group_by(height, size) %>%
  summarise(avg_pl = mean(Petal.Length), 
            avg_sl = mean(Sepal.Length), 
            fl_cnt= n())
