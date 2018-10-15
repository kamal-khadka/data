library(nycflights13)
library(tidyverse)

# filter rows with filter()
filter(flights, month ==1 , day == 1)

jan1 <- filter(flights, month == 1, day == 1)

(dec25 <- filter(flights, month == 12, day ==25))

nov_dec <- filter(flights, month %in% c(11, 12))
nov_dec


