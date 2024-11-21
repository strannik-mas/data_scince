bmi <- function(rost, ves) {
  rost <- rost / 100
  return(round(ves/rost**2))
}
bmi(180, 100)

chkName <- function(n) {
  myName <- "Alex"
  if (n == myName) {
    cat(n, "welcome to R! I missed you", sep=', ')
  } else {
    print("Sorry, R is not available now")
  }
}
chkName("Alex")

mRC <- function(df) {
  sR <- max(rowSums(df))
  sC <- max(colSums(df))
  return(c(sR, sC))
}
company.1 <- c(223,100,350,122,99,346)
company.2 <- c(563,478,501,497,102,421)
company.3 <- c(156,187,122,134,53,190)
dataFrame <- rbind.data.frame(company.1, company.2, company.3)

mRC(dataFrame)
