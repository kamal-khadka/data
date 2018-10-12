library(tidyverse)

# bar chart calcualte new values to plot: here count
ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut))


# same as above:
ggplot(data = diamonds) +
  stat_count(mapping = aes(x = cut))


# bar chart of propotion
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut, y = ..prop.., group = 1))


# sumarises the y values for each unique x value
ggplot( data = diamonds ) + 
  stat_summary( 
    mapping = aes(x = cut, y = depth),
    fun.ymin = min,
    fun.ymax = max,
    fun.y = median
  )


# color asethetic 
ggplot( data = diamonds) + 
  geom_bar(mapping = aes(x = cut, color = cut))

# fill asethetic 
ggplot( data = diamonds ) +
  geom_bar(mapping = aes(x = cut, fill = cut))

ggplot( data = diamonds ) +
  geom_bar(mapping= aes(x = cut, fill = clarity))
