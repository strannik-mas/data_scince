install.packages("tidyverse")
library(tidyverse)
install.packages("devtools")
devtools::install_github("r-lib/conflicted")
library(conflicted)
library(dplyr)
conflicts_prefer(dplyr::filter)

rate <- read.csv('./3/data/Ratings.csv')
good <- rate %>% filter(PREP > 5, DECI > 8)
View(good)

bad.small <- rate %>% filter(FAMI <= 5.5, CFMG < 6) %>% select(PREP, CFMG, PHYS)
View(bad.small)

rate <- rate %>% mutate(MEAN_BAL = (ORAL + WRIT)/2)
