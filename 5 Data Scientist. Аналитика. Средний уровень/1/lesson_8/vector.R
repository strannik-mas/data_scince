v <- c(2,5,8)
v
sales <- c(30,80,24,67,90,32,24)
cat(sales)

length(sales)
sales[1]
sales[length(sales)]
sales[1] <- 44
sales

sales[1:3]

sales[sales == 24]
sales[sales <= 30]

#indexes
which(sales == 24)

which(sales > 30)

sales ** 2


plus <- c(0, 0, 0, 5.96, 5000, 120, 0, 1.20, 0, 54000, 15000, 0, 0, 0, 0, 7000, 130, 132,
          0, 0, 0, 6700, 1.98, 4000, 1459, 0, 0, 120, 0, 160, 0)
minus <- c(2560, 1200, 0, 0, 0, 240, 0, 856, 0, 3500, 9255, 0, 120, 0, 0, 2000, 250, 0,
           0, 0, 169, 13400, 0, 1300, 0, 0, 0, 240, 120, 0, 0)

plus[25]
minus[12]
which(minus > 2000)
length(plus[plus < 300])
max(minus)
sum(plus)
log(plus[5])

ost = plus - minus
mils = plus / 1000
mils.r1 = round(mils, 1)
mils.r2 = ceiling(mils)
mils.r3 = floor(mils)
