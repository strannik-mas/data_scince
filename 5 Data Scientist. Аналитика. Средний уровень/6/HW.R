dat <- read.csv('./6/data/parfume.csv')
dat.filter = dat[dat$vote < 2,]

contr_df <- dat.filter[dat.filter$group == "control",]
test_df <- dat.filter[dat.filter$group == "test",]
barplot(table(contr_df[, 6]), main="Control", ylab="Count")
barplot(table(test_df[, 6]), col = "red", main="Test", ylab="Count")

test <- test_df$vote
control <- contr_df$vote

p_old = mean(control)
p_new = mean(test)
p_razn = p_new - p_old

N <- 1000
set.seed(123)

differences <- rep(NA, N)

for(i in 1:N){
    s1 <- sample(control, replace = TRUE)
    s2 <- sample(test, replace = TRUE)
    
    p1 <- sum(s1)/length(s1)
    p2 <- sum(s2)/length(s2)
    
    p_diff <- p2 - p1
    differences[i] <- p_diff
}

diff_df = data.frame(dif = differences)
differences_center <- differences - mean(differences)
diff_df$dif_cent <- differences_center

pval = sum(differences_center > p_razn)


