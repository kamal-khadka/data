library(nycflights13)
library(tidyverse)

# select columns with select()
select(flights, year, month, day)

# select all columns between year and day (inclusive)
select(flights, year:day)

# select all columns except those from year to day (inclusive)
select(flights, -(year:day))

flights

rename(flights, tail_num = tailnum)

select(flights, time_hour, air_time, everything())
