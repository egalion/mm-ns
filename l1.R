stolowe <- c(0, 12, 22, 30, 36, 40, 42, 43)
masi <- c(14, 12, 10, 8, 6, 4, 2, 0)

ppf.df <- data.frame(stolowe, masi)
row.names(ppf.df) <- LETTERS[seq(1:8)]
colnames(ppf.df) <- c("столове", "маси")
t(ppf.df)

plot(ppf.df, type = "l", xlab = "столове", ylab = "маси", main = "Граница на производствените възможности")
points(0,14, pch = 20) # A
text(1, 13, labels = "A")
points(12,12, pch = 20) # B
text(13.5, 12, labels = "B")
points(22,10, pch = 20) # C
text(23.5,10, labels = "C")
points(30,8, pch = 20) # D
text(31.5,8, labels = "D")
points(36,6, pch = 20) # E
text(37.5, 6, labels = "E")
points(40,4, pch = 20) # F
text(41.5,4, labels = "F")
points(42,2, pch = 20) # G
text(43.5, 2, labels = "G")
points(43,0, pch = 20) # H
text(41, 0.5, labels = "H")

# неефективно производство
points(12,10, pch = 20) # M
text(13.5, 10, labels = "M")
# недостижимо производство
points(22, 12, pch = 20) # N
text(23.5, 12, labels = "N")

segments(12,0,12,12, lty = 3)
segments(0,12,12,12, lty = 3)
segments(22,0,22,10, lty = 3)
segments(0,10,22,10, lty = 3)

# Изместване на кривата

ppf_tech.df <- data.frame(stolowe*1.5, masi*1.5)
ppf_tech_masi.df <- data.frame(stolowe, masi*1.5)

# Подобряване на производителността на маси
plot(ppf_tech_masi.df, col = "green", xlab = "столове", ylab = "маси", type = "l", 
     main = "Граница на производствените възможности -\n повишена производителност на маси")
lines(ppf.df)

# Подобряване на технологиите като цяло
plot(ppf_tech.df, type = "l", xlab = "столове", ylab = "маси", col = "red", 
     main = "Граница на производствените възможности - \n поява на нови технологии")
lines(ppf.df)


library(stargazer)
stargazer(t(ppf.df), type = "text")
t(ppf.df)



de_en1 <- data.frame(c(0,15), c(20,0), c(0,10), c(30,0))
colnames(de_en1) <- c("DE_wool", "DE_wine", "EN_wool", "EN_wine")
de_en1
plot(c(0,20), c(0,30), type = 'n')
lines(x = de_en1$DE_wool, y = de_en1$DE_wine, col = "red")
lines(x = de_en1$EN_wool, y = de_en1$EN_wine, col = "blue")
legend(15,25, c("Germany", "England"), col = c("red", "blue"), lty = c(1,1), cex = 0.5)


plot(c(0,20), c(0,35), type = 'n', xlab = "wool", ylab = "wine", bty = "n")
england1 <- data.frame(c(0,10), c(30,0))
germany1 <- data.frame(c(0,15), c(20,0))
lines(england1, col = "blue")
lines(germany1, col = "red", bty = "n")
legend("topright", c("England", "Germany"), col = c("blue", "red"), lty = c(1,1), cex = 0.7, bty = "n")
grid()
