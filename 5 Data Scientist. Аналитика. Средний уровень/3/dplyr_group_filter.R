library(tidyverse)
tit <- read.csv('./3/data/Titanic.csv')
library(conflicted)
library(dplyr)
conflicts_prefer(dplyr::filter)

str(tit)
tit <- na.omit(tit)
tit %>% group_by(sex) %>% summarise(m_age = mean(age))
tit %>% group_by(pclass) %>% filter(sex == 'male') %>% summarise(male_count = n())
tit %>% group_by(pclass) %>% filter(sex == 'female') %>% summarise(female_count = n())

tit <- tit %>% mutate(Female = sex == 'female')

tit %>% group_by(pclass) %>% summarise(n_female = sum(Female), n_male = length(Female) - sum(Female))
tit %>% group_by(pclass) %>% summarise(n_female = sum(Female) * 100/ length(Female), n_male = (length(Female) - sum(Female)) * 100 / length(Female))
