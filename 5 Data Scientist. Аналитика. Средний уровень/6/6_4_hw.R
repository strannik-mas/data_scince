conv <- read.csv('./6/data/conversion.csv')
p_old = mean(conv$OLD)
p_new = mean(conv$NEW)
prazn = p_new - p_old

N <- 1500
set.seed(12)  #стартовая точка чтобы были одинаковые псевдо-рандомные значения



differences <- rep(NA, N)

for(i in 1:N){
    s1 <- sample(conv$OLD, replace = TRUE)
    s2 <- sample(conv$NEW, replace = TRUE)

    p1 <- sum(s1)/length(s1)
    p2 <- sum(s2)/length(s2)

    p_diff <- p2 - p1
    differences[i] <- p_diff
}

library(tidyverse)

diff_df = data.frame(dif = differences)

ggplot(data=diff_df, aes(x=dif)) + geom_histogram(fill = 'lightblue', color='navy') +
    geom_vline(xintercept = 0.6325, color='red', lty=2)


differences_center <- differences - mean(differences)
diff_df$dif_cent <- differences_center
ggplot(data=diff_df, aes(x=dif_cent)) + geom_histogram(fill = 'lightblue', color='navy') +
    geom_vline(xintercept = 0.6325, color='red', lty=2)

sum((differences - mean(differences)) > 0.6325)
pval = sum(differences_center > 0.6325)
# 0 < 0.05 - H0 reject
