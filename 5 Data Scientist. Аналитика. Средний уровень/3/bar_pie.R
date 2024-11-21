library(tidyverse)
cars <- read.csv('./3/data/mtcars.csv')
library(conflicted)
library(dplyr)
conflicts_prefer(dplyr::filter)

cols <- c('red', 'blue', 'yellow')
barplot(table(cars$gear), main="Gear", col=cols, ylab = "Count cars", xlab = 'Count of gear')


hist(cars$hp, main = "HP", col = "darkgreen", xlab="horse power")


firms <- read.csv('./3/data/financials.csv')
perc <- table(firms$Sector)/sum(table(firms$Sector)) * 100
perc_round <- round(perc,2)
perc_labs <- paste(perc_round, "%", sep="")
labs <- names(perc)
colors <- c('thistle2', 'plum2', 'palevioletred', 'orchid4', 'purple3',
            'lightblue', 'cornflowerblue', 'lightskyblue3', 'royalblue',
            'darkturquoise', 'navy')
dev.copy(png, 'graph1.png')

pie(table(firms$Sector), labels = perc_labs, main="S&P 500", sub="Distribution by sectors", col=colors)
legend(x=-1.2, y=-0.8, labs, cex = 0.7, fill=colors, ncol = 3, bty="n")
dev.copy(png, 'graph.png')
dev.off()
