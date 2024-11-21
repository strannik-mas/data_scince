library(tidyverse)
dat <- read.csv('./3/data/flats.csv')
library(conflicted)
library(dplyr)
conflicts_prefer(dplyr::filter)

dat %>% group_by(brick) %>% summarise(n_brick = sum(brick), without_brick = length(brick) - sum(brick))
dat %>% group_by(brick) %>% summarise(m_price = mean(price))

ggplot(data=dat, aes(x=price)) + geom_histogram(binwidth = 4, fill="skyblue") + facet_wrap(~walk)

ggplot(data=dat, aes(x=totsp, y=price, size=kitsp, color=walk)) + geom_point()
