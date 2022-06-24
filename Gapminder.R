# Gapminder exercise

df <- gapminder::gapminder_unfiltered
str(df)
#' Create a summary including the average height of athletes 
#' and average gdpPercap for each country
# Plot a simple scatter plot of  average Height vs average gdp

df_joined <- inner_join(athlete, df, by = c("Team" = "country", "Year" = "year")) %>%
  group_by(Team) %>%
  summarise(Avg_Height = mean(Height, na.rm = T),
            AvgGDP = mean(gdpPercap, na.rm = T))

plot(df_joined$Avg_Height, df_joined$AvgGDP)
