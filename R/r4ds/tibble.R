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

read_csv("a,b,c
         1,2,3
         4,5,6")


read_csv("The fist line of metadata
         The second line of metadata
         x,y,z
         1,2,3", skip = 2)


read_csv("# A comment I want to skip
         x,y,z
         1,2,3", comment= "#")


read_csv("1,2,3\n4,5,6", col_names = FALSE)

read_csv("1,2,3\n4,5,6", col_names = c("x", "y", "z"))

read_csv("a,b,c\n1,2,.", na = ".")


str(parse_logical(c("TRUE", "FALSE", "NA")))

str(parse_integer(c("1", "2", "3")))


str(parse_date(c("2010-01-01", "1979-10-14")))


parse_integer(c("1", "231", ".", "456"), na = ".")


challenge <- read_csv(readr_example("challenge.csv"))


problems(challenge)
