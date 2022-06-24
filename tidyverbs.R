# tidy verbs
library(dplyr)

df <- iris
head(iris)
filter(df, Species == "setosa")
select(df, -Species)
df_ordered <- arrange(df, Petal.Length)
df_rev_ordered <- arrange(df, desc(Petal.Length))
df_ordered <- mutate(df_ordered, 
                     Species = paste("genus_",Species))
count(df)
group_by(df, Species)
summarise(df, sum_length = sum(Petal.Length))
