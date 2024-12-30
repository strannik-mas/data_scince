install.packages("DescTools")
library(DescTools)

BinomCI(60, 100, conf.level = 0.95)

BinomCI(80, 100, conf.level = 0.95)
ages <- c(23, 24, 34, 33, 38)
MeanCI(ages, conf.level = 0.95)
