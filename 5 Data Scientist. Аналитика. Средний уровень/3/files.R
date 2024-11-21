install.packages("readxl")
df <- read.csv('./3/data/Cars.csv')
getwd()
#setwd("...")
library(readxl)
df2 <- read_excel("./3/data/Cars.xlsx")

test <- read_excel("./3/data/Test.xlsx", sheet=3)
df3 <- read.csv("./3/data/Indices.csv", sep="\t")
