library(nycflights13)
library(tidyverse)

# arrange rows with arrange(): changes row order
arrange(flights, year, month, day)
arrange(flights, desc(dep_delay))


df <- tibble(x = c(5, 2, NA))
arrange(df, x)
arrange(df, desc(x))
