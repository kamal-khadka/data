library(nycflights13)
library(tidyverse)

# grouped summaries with summarise()
summarise(flights, delay = mean(dep_delay, na.rm = TRUE))


by_day <- group_by(flights, year, month, day)
summarise(by_day, delay = mean(dep_delay, na.rm = TRUE))

not_cancelled <- flights %>%
  filter(!is.na(dep_delay), !is.na(arr_delay))


not_cancelled %>%
  group_by(year, month, day) %>%
  summarise(mean = mean(dep_delay))


delays <- not_cancelled %>%
  group_by(tailnum) %>%
  summarise(
    delay = mean(arr_delay)
  )


ggplot(data = delays, mapping = aes(x = delay)) + 
  geom_freqpoly(binwidth = 10)


delays <- not_cancelled %>%
  group_by(tailnum) %>%
  summarise(
    delay = mean(arr_delay, na.rm = TRUE),
    n = n()
  )

ggplot(data = delays, mapping = aes(x = n, y = delay)) +
  geom_point(alpha = 1 / 10)


delays %>%
  filter(n > 25) %>%
  ggplot(mapping = aes(x = n, y = delay)) + 
  geom_point(alpha = 1/10)


# convert to a tibble so it prints nicely
batting <- as_tibble(Lahman::Batting)


batters <- batting %>%
  group_by(playerID) %>%
  summarise(
    ba = sum(H, na.rm = TRUE) / sum(AB, na.rm = TRUE),
    ab = sum(AB, na.rm = TRUE)
  )


batters %>%
  filter( ab > 100 ) %>%
  ggplot(mapping = aes(x = ab, y = ba)) +
  geom_point() + 
  geom_smooth(se = FALSE)


