library(tidyverse)

# coerce a data frame to a tibble
as_tibble(iris)

nycflights13::flights %>%
  View()

# subsetting
df <- tibble(
  x = runif(5),
  y = rnorm(5)
)


# Extract by name
df$x

df[["x"]]


# Extract by position
df[[1]]


# To use these in a pipe, you use the special placeholder .
df %>% .$x

# use as.data.frame() to turn tibble back to a data.frame
class(as.data.frame(df))

