# Tidy exercise 1
library(dplyr)
athlete <- read.csv("../olympic_events.csv")

athlete_final <- athlete %>%
  filter(Year >= 1950) %>%
  filter(Year <= 2007) %>%
  filter(Season != "Winter") %>%
  mutate(Weight_lbs = Weight * 2.2) %>%
  arrange(desc(Weight_lbs)) %>%
  rename(Country = NOC) %>%
  group_by(Country) %>%
  summarise(No_of_athletes = n(),
            Avg_Height = mean(Height, na.rm = T),
            Avg_Weight_kg = mean(Weight, na.rm = T),
            Avg_Weight_lbs = mean(Weight_lbs, na.rm = T))  
