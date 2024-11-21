stud.A <- 8
stud.B <- 4

stud.B < stud.A
3 < stud.A & stud.A < 7
stud.A >= 8 | stud.B >= 8
xor(stud.A >= 4, stud.B >= 4)

fweigh <- c(234, 67, 19, 4, 176, 109, 34, 88, 256, 287, 121,
            348, 901, 499, 1, 0.5, 72, 231, 213, 0.2, 5,
            1034, 9, 121, 448, 239, 663, 238, 810, 6)
sum(fweigh == 121)
sum(fweigh >= 200 & fweigh <= 400)
sum(fweigh <= 10)
sum(fweigh > 900 | fweigh < 1)
which(fweigh < 1)
sum(fweigh[fweigh < 40])

a <- 1:4
b <- 5:7
a + b
a-b


#2 part
exam <- 4
if (exam > 3) {
  print( "Good")
} else {
  print("Bad!")
}

marks <- c("отлично", "хорошо", "отлично", "хорошо", "удовлетворительно",
           "хорошо", "удовлетворительно", "плохо", "плохо", "плохо")

if ((marks[1] == "отлично" | marks[1] == "хорошо") & (marks[length(marks)] == "плохо" | marks[length(marks)] == "удовлетворительно")) {
  print("You are losing your qualification.")
}

if ((marks[1] == "удовлетворительно" | marks[1] == "плохо") & (marks[length(marks)] == "отлично" | marks[length(marks)] == "хорошо")) {
  print("You are making progress.")
} else {
  print("Too dificult!")
}

coffee <- c(Ann = 2, Alice = 3, Rowena = 1, Nick = 0)
resp <- "Alice"
names <- names(coffee)
if (resp %in% names) {
  cat("coffee cups:", coffee[resp])
}else {
  print("No such respondents")
}
