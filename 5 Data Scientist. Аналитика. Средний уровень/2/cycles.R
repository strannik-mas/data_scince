chisla <- c(1:15)
for (chislo in chisla) {
  cat("Квадрат числа", chislo, "равен", chislo ** 2, "\n")
}

guests <- c("Аня", "Коля", "Алиса", "Егор")
for (name in guests) {
  cat("Привет, ", name, "!\n", sep="")
}

mfiles <- c("file01", "file_01", "file_02", "file03", "file05", "file_05", "file_09", "file10")
to.work <- c()
for (file in mfiles) {
  if (grepl("_", file)) {
    to.work <- c(to.work, file)
  }
}
to.work