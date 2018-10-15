library(nycflights13)
library(tidyverse)

# add new variables with mutate()
flights_sml <- select(flights, year:day, 
                      ends_with("delay"),
                      distance,
                      air_time)
flights_sml

mutate(flights_sml,
       gain = dep_delay - arr_delay,
       speed = distance / air_time * 60)

mutate(flights_sml,
       gain = dep_delay - arr_delay,
       hours = air_time / 60,
       gain_per_hor = gain / hours)

# if you only want to keep the new variables, use transmute()

transmute(flights, 
          gain = dep_delay - arr_delay, 
          hours = air_time / 60,
          gains_per_hour = gain / hours)
