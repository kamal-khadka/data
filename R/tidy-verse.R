library(tidyverse)

tidyverse_update()

# these packages provide data on airline flights, world development, and baseball
install.packages(c("nycflights93", "gapminder", "Lahman"))

# data frame is a rectangular collection of variables (in columns) and observations (in rows)
# mpg contains observation collected by EPA on 38 models of car
mpg


ggplot( data = mpg) +
  geom_point(mapping = aes(x = displ,  y = hwy))


# facet your plot on the single variable
ggplot( data = mpg ) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_wrap(~ class, nrow = 2)

# facet your plot on the combination of two variables
ggplot( data = mpg ) +
  geom_point( mapping = aes(x = displ, y = hwy)) +
  facet_grid(drv ~ cyl)

# smooth curve geom
ggplot( data = mpg ) + 
  geom_smooth(mapping = aes(x = displ, y = hwy))


# smooth curve geom with line type
ggplot(data = mpg) +
  geom_smooth( mapping = aes( x = displ, y = hwy, linetype = drv))

# overlaying lines on top of raw data
ggplot( data = mpg ) +
  geom_point( mapping = aes(x = displ, y = hwy, color = drv)) + 
  geom_smooth(mapping = aes(x = displ, y = hwy, linetype = drv, color = drv))

# group aesthetic doesn't add a legend or distinguishing features to the geoms
ggplot( data  = mpg ) + 
  geom_smooth(mapping = aes(x = displ, y = hwy, group = drv))

# group by color , don't show legend
ggplot( data = mpg) + 
  geom_smooth( mapping = aes(x = displ, y = hwy, color = drv), 
               show.legend = FALSE)


# display multiple geom in the same plot
ggplot( data = mpg) +
  geom_point(mapping= aes(x = displ, y = hwy)) + 
  geom_smooth(mapping = aes(x = displ, y = hwy))


# remove duplication from above
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + 
  geom_point() + 
  geom_smooth()

# global mapping with local layer aesthtics
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + 
  geom_point( mapping = aes(color = class)) + 
  geom_smooth()


# specify different data for each layer
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point(mapping = aes(color = class)) + 
  geom_smooth(data = filter(mpg, class=="subcompact"), se = FALSE)
