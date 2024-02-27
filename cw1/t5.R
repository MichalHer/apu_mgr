# wariant 5
#a
a <- 14*cos(pi)
b <- 2*a

#b
?log10

#c
v = mapply(":",900,1150)
mean(v^2)

#d
ls("package:base", pattern = "log")

#e
setwd("/home/michal/University/apu_mgr/cw1")
a <- "lodówka turystyczna"
writeLines(a, "plik.txt")
rm(a)
a <- readLines("plik.txt")
a

#f
install.packages("gridExtra")
library(gridExtra)
sleep_data <- tableGrob(head(sleep, n = 10))
grid.arrange(sleep_data)

#g
v2 <- seq(1500, 1400, by = -5)

#h
va <- seq(25,5)
vb <- seq(50,70)
vab <- c(vb,va)
vab

#i
nazwa <- paste0("Lodówka ", 1:15)
pojemnosc <- c(20, 25, 18, 22, 30, 28, 24, 26, 21, 27, 23, 19, 29, 31, 17)
waga <- c(10, 12, 9, 11, 14, 13, 10.5, 12.5, 10, 13, 11.5, 9.5, 13.5, 15, 8.5)
cena <- c(200, 220, 180, 250, 300, 280, 230, 270, 210, 290, 240, 200, 310, 330, 170)
liczba_opinii <- c(50, 45, 55, 60, 70, 65, 48, 52, 58, 62, 53, 47, 68, 75, 40)
lodowki <- data.frame(Nazwa = nazwa, Pojemnosc = pojemnosc, Waga = waga, Cena = cena, Liczba_Opinii = liczba_opinii)
lodowki
mean(lodowki$Cena)

#j
nowa_lodowka <- data.frame(Nazwa = "Nowa Lodówka", Pojemnosc = 26, Waga = 11.8, Cena = 260, Liczba_Opinii = 50)
lodowki <- rbind(lodowki, nowa_lodowka)
lodowki
mean(lodowki$Cena)

#k
install.packages('dplyr')
library(gridExtra)
lodowki <- dplyr::mutate(lodowki, oceny_klientow = rep(seq(0, 5, by = 0.5), length.out = nrow(lodowki)))
lodowki$oceny_klientow <- factor(lodowki$oceny_klientow, levels = seq(0, 5, by = 0.5))
srednie_ceny_ocen <- tapply(lodowki$Cena, lodowki$oceny_klientow, mean)
srednie_ceny_ocen

# l
nowe_lodowki <- data.frame(Nazwa = c("Nowa1", "Nowa2", "Nowa3", "Nowa4"),
                           Pojemnosc = c(22, 23, 21, 24),
                           Waga = c(11, 10.5, 11.2, 12),
                           Cena = c(240, 230, 245, 250),
                           Liczba_Opinii = c(50, 60, 45, 70),
                           oceny_klientow = c(4, 3.5, 4.5, 3))
lodowki <- rbind(lodowki, nowe_lodowki)
barplot(table(lodowki$oceny_klientow), main = "Liczba reprezentantów dla każdej oceny", xlab = "Ocena", ylab = "Liczba")

#m
pie(table(lodowki$oceny_klientow) / nrow(lodowki), main = "Procentowy udział ocen")

#n
lodowki$status_opinii <- cut(lodowki$Liczba_Opinii, breaks = c(0, 50, 100, Inf), labels = c("nie ma", "mniej 50 opinii", "50-100 opinii"))
lodowki$status_opinii <- factor(lodowki$status_opinii)
pie(table(lodowki$status_opinii) / nrow(lodowki), main = "Procentowy udział statusu opinii")

#o
zdania_o_lodowkach <- paste(lodowki$Nazwa, "ma ocenę klientów", lodowki$oceny_klientow, "bo ma liczbę opinii", lodowki$Liczba_Opinii)
print(zdania_o_lodowkach)

#p
write.csv(lodowki, "lodowki_dane.csv", row.names = FALSE)
lodowki_z_pliku <- read.csv("lodowki_dane.csv")
print(lodowki_z_pliku)




