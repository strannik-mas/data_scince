x <- c(4,6,0,1,0)
x1 <- as.logical(x)

ages <- c(18.5, 24.5, 32.25, 45.5, 56.08)
ages_new <- as.integer(ages)


dat <- "23.5%, 23.7 %, 27.6% , 29.8% "
vv <- unlist(strsplit(dat, ","))
vv <- as.numeric(gsub(" ", "", gsub("%", '', vv)))
vv
is.numeric(vv)
