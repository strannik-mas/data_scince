n <- 120
nums <- 1:n
head(nums)

users.tab <- paste("user", nums, sep="_")


nn <- rep(1:20, 2)
ab <- rep(c("A", "B"), each=20)
paste(ab, nn, sep="")

n2 <- paste("N", 1:8, sep="")
msk <- rep("Москва", 4)
spb <- rep("Санкт-Петербург", 4)
cities <- rep(c("Москва", "Санкт-Петербург"), each=4)
cities2 <- c(msk, spb)

district_m <- rep(c("Басманный", "Красносельский"), 2)
district_p <- rep(c("Адмиралтейский", "Центральный"), 2)
district <- c(district_m, district_p)

districts <- c("Басманный", "Красносельский", "Басманный", "Красносельский", "Адмиралтейский", "Центральный", "Адмиралтейский", "Центральный")
df <- cbind.data.frame(n2, cities, districts)
df

company.1 <- c(223,100,350,122,99,346)
company.2 <- c(563,478,501,497,102,421)
company.3 <- c(156,187,122,134,53,190)
ma <- rbind(company.1, company.2, company.3)
ma
sR <- rowSums(ma)
mSumDog <- colSums(ma)

ma[1,2] <- 110
ma[2,3] <- 517
ma[3,3] <- 127
ma
