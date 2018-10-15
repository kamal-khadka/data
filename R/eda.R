library(tidyverse)

ggplot(data = failthful, mapping = aes(x = eruptions)) +
  geom_histogram(binwidth = 0.25)


ggplot(diamonds) +
  geom_histogram(mapping = aes(x = y), binwidth = 0.5)


ggplot(diamonds) + 
  geom_histogram(mapping = aes(x = y), binwidth = 0.5) +
  coord_cartesian(ylim = c(0,50))


unusual <- diamonds %>%
  filter( y < 3 | y > 30) %>%
  select(price, x, y, z) %>%
  arrange(y)

unusual

diamonds

my_diamonds <- diamonds %>%
  select(x, y, z)


my_diamonds

ggplot(my_diamonds) +
  geom_histogram(mapping = aes(x = x), binwidth = 0.5 )


diamonds2 <- diamonds %>%
  mutate(y = ifelse(y < 3 | y > 20, NA, y))


ggplot( data = diamonds2, mapping = aes(x = x, y = y)) +
  geom_point(na.rm = TRUE)


ggplot( data = diamonds, mapping = aes(x = price)) + 
  geom_freqpoly(mapping = aes(color = cut), binwidth = 500)


ggplot(data = diamonds, mapping = aes(x = price, y = ..density..)) +
  geom_freqpoly(mapping = aes(color = cut), binwidth = 500)


ggplot( data = mpg, mapping = aes(x = class, y = hwy)) + 
  geom_boxplot()


ggplot(data = mpg) +
  geom_boxplot(mapping = aes(x = reorder(class, hwy, FUN = median), y = hwy)) + 
  coord_flip()


