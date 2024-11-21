library(tidyverse)
dat <- read.csv('./3/data/housing.csv', sep="\t")
library(conflicted)
library(dplyr)
conflicts_prefer(dplyr::filter)

head(dat)
tail(dat)
summary(dat)
dmedv = max(dat$MEDV) - min(dat$MEDV)

dat$MEDV_N <- dat$MEDV * 1000
small <- dat[dat$MEDV_N > 40000 & dat$MEDV_N < 50000,]
nrow(small)

dat <- dat %>% mutate(MEDV_LOG = log(MEDV))
dat %>% filter(LSTAT > 30) %>% View

dev.copy(png, './3/hist.png')
hist(dat$LSTAT, main = "LSTAT", col = "darkred", xlab="low money")
dev.off()

dev.copy(png, './3/hist-ggplot.png')
ggplot(data=dat, aes(x=LSTAT)) + geom_histogram(binwidth=2, fill="skyblue", color="navy") +
  labs(title = "lsat znacheniya procenty", xlab="velichina LSAT", ylab="procenty LSAT")
dev.off()
