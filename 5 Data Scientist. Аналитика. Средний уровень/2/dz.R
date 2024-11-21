belki <- 20
strelki <- 26

if (belki > strelki) {
  print("pobedila komanda BELKI!")
}
if (belki < strelki) {
  print("pobedila komanda STRELKI!")
} else {
  print("pobedila druzhba!")
}

temp <- c(-8, -5, 0, 2, -6, -9, -8, -12, -11, -7)
for (day.temp in temp) {
  if (day.temp > -3.7) {
    cat(day.temp, "temperatura vyshe normy\n")
  } else {
    if (day.temp < -9.8) {
      cat(day.temp, 'temperatura nizhe normy!\n')
    } else {
      cat(day.temp, "temperatura v norme!\n")
    }
  }
}

progress <- function(zd, obsh) {
  return(round(zd*100/obsh, 2))
}
progress(15,100)

assessment <- function(v) {
  res <- c()
  for (pr in v) {
    if (pr <= 0) {
      c = 0
    } else {
      c = 1
    }
    res <- c(res, c)
  }
  return(res)
}
assessment(c(-100,150,3500,720,0,-350))

assessment2 <- function(v) {
  res <- c(ifelse(v <=0, 0, 1 ))
  return(res)
}
assessment2(c(-100,150,3500,720,0,-350))
