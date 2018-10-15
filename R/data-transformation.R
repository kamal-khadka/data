library(tidyverse)

install.packages(c("nycflights13", "gapminder", "Lahman"))

library(nycflights13)


nycflights13::flights


?flights

View(flights)
# dplyr basics
## pick observations by their values : filter()
## reorder the rows : arrange()
## pick variables by their names : select()
## create new variables with functions of existing variables: mutate()
## collapse many bew values down to a single summary : summarise()

# group_by() which changes the scope of each function from operating on the entire dataset to operating on it group-by-group
