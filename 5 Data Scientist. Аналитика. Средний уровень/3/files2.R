dat.cars <- read.csv('./3/data/mtcars.csv')
dim(dat.cars)
str(dat.cars)
summary(dat.cars$hp)
dat.cars$wt_kg <- dat.cars$wt * 1000 / 0.45
mg <- dat.cars[dat.cars$am == 1,]
View(mg)

cars2 <- dat.cars[dat.cars$gear > 4 & dat.cars$hp < 120,]
View(cars2)

nrow(mg)
nrow(cars2)
