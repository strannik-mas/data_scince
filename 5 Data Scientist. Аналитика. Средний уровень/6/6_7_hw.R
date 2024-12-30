conv <- read.csv('./6/data/conversion.csv')

ns1 <- sum(conv$OLD)
ns2 <- sum(conv$NEW)

nTotal1 <- length(conv$OLD)
nTotal2 <- length(conv$NEW)

prop.test(c(ns1, ns2), c(nTotal1, nTotal2), alternative = "greater")

