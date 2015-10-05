# scratchpad

library(knitr)

knit2html("l2.Rmd")


png("file3.png")
plot(1, xlim = c(0,100), ylim = c(0,10), xaxs = "i", yaxs = "i",
     bty = "n", type = "n", xlab = "Количество, единици", 
     ylab = "Цена, лв.",
     main = "Криви с различна еластичност на търсенето")
grid()
segments(40,9,60,1, lwd = 2, col = "darkred")
segments(10,7,90,3, lwd = 2, col = "darkblue")
segments(0,5,50,5, lwd = 2, lty = 2, col = "darkgray")
segments(50,0,50,5, lwd = 2, lty = 2, col = "darkgray")
segments(0,6.5,45.75,6.5, lwd = 1, lty = 2, col = "darkgray")
segments(45.75,6.5,45.75,0, lwd = 1, lty = 2, col = "darkgray")
segments(20,6.5,20,0, lwd = 1, lty = 2, col = "darkgray")
segments(0,3.5,80,3.5, lwd = 1, lty = 2, col = "darkgray")
segments(53.75,3.5,53.75,0, lwd = 1, lty = 2, col = "darkgray")
segments(80,3.5,80,0, lwd = 1, lty = 2, col = "darkgray")
text(22,6.8, expression("A"[1]), adj = 0)
text(47,6.8, expression("A"[2]), adj = 0)
text(82,3.8, expression("B"[1]), adj = 0)
text(57,3.8, expression("B"[2]), adj = 0)
text(53,5.3, "E", adj = 0)
text(10,7.5, expression("D"[1]))
text(40,9.5, expression("D"[2]))
text(75,9, expression("еластичност D"[1]~">"~"еластичност D"[2]))
dev.off()

png("file4.png")
plot(1, xlim = c(0,100), ylim = c(0,10), xaxs = "i", yaxs = "i",
     bty = "n", type = "n", xlab = "Количество, единици", 
     ylab = "Цена, лв.",
     main = "Криви с различна еластичност на предлагането")
grid()
segments(40,1,60,9, lwd = 2, col = "darkred")
segments(10,3,90,7, lwd = 2, col = "darkblue")
text(60,9.5, expression("S"[1]))
text(90,7.5, expression("S"[2]))
text(75,2, expression("еластичност S"[2]~">"~"еластичност S"[1]))
dev.off()

png("file5.png")
par(mfrow = c(1,2))
plot(1, xlim = c(0,100), ylim = c(0,10), bty = "n",
     xaxs = "i", yaxs = "i", type = "n",
     xlab = "Количество, ед.", ylab = "Цена, лв.",
     main = "А) Нарушаване на равновесието")
grid()
segments(10,8,90,2, lwd = 2) # D
text(10,8.2, "D")
segments(40,1,60,9, lwd = 2) # S 
text(60,9.2, expression("S"[1]))
segments(0,5,50,5, lwd = 2, lty = 2, col = "darkgray")
segments(50,7,50,0, lwd = 2, lty = 2, col = "darkgray")
segments(0,7,50,7, lwd = 2, lty = 2, col = "darkgray")
segments(23,7,50,7, lwd = 2, lty = 2, col = "red")
segments(35,1,55,9, lwd = 2, col = "darkgray") # S2
text(55,9.2, expression("S"[2]))
text(53,5, expression("E"[1]), adj = 0)
text(43,5.8, expression("E"[2]))
text(48,7.3, expression("Q"[S]))
text(24,7.3, expression("Q"[D]))
plot(1, xlim = c(0,100), ylim = c(0,10), bty = "n",
     xaxs = "i", yaxs = "i", type = "n",
     xlab = "Количество, ед.", ylab = "Цена, лв.",
     main = "Б) Разпределение на данъчната тежест")
grid()
segments(10,8,90,2, lwd = 2) # D
text(10,8.2, "D")
segments(40,1,60,9, lwd = 2, col = "darkgray") # S 
text(60,9.2, expression("S"[1]))
segments(0,5,50,5, lwd = 2, lty = 2, col = "darkgray")
segments(50,7,50,0, lwd = 2, lty = 2, col = "darkgray")
segments(0,7,50,7, lwd = 2, lty = 2, col = "darkgray")
segments(23,7,50,7, lwd = 2, lty = 2, col = "red")
segments(35,1,55,9, lwd = 2) # S2
text(55,9.2, expression("S"[2]))
text(53,5, expression("E"[1]), adj = 0)
text(43,5.8, expression("E"[2]))
text(48,7.3, expression("Q"[S]))
text(24,7.3, expression("Q"[D]))
text(50,3.2, expression("Q"[S2]))
segments(0,5.3,46,5.3, lwd = 2, lty = 2, col = "darkblue")
segments(46,5.3,46,0, lwd = 2, lty = 2, col = "darkblue")
segments(0,3.3,46,3.3, lwd = 2, lty = 2, col = "darkblue")
rect(0,3.3,46,5, col = "orange", density = 20, border = "transparent")
rect(0,5,46,5.3, col = "green", density = 20, border = "transparent")
dev.off()



png("file6.png")
par(mfrow = c(1,2))
plot(1, xlim = c(0,100), ylim = c(0,10), bty = "n",
     xaxs = "i", yaxs = "i", type = "n",
     xlab = "Количество, ед.", ylab = "Цена, лв.",
     main = "А) Нарушаване на равновесието")
grid()
segments(40,9,60,1, lwd = 2) # D
text(40,9.3, "D")
segments(10,1,90,9, lwd = 2) # S 
text(90,9.3, expression("S"[1]))
segments(0,5,50,5, lwd = 2, lty = 2, col = "darkgray")
segments(50,7,50,0, lwd = 2, lty = 2, col = "darkgray")
segments(0,7,50,7, lwd = 2, lty = 2, col = "darkgray")
segments(45,7,50,7, lwd = 2, lty = 2, col = "red")
segments(10,3,70,9, lwd = 2, col = "darkgray") # S2
text(70,9.3, expression("S"[2]))
text(53,5, expression("E"[1]), adj = 0)
text(49,6.5, expression("E"[2]))
text(49,7.3, expression("Q"[S]))
text(41,7.3, expression("Q"[D]))
plot(1, xlim = c(0,100), ylim = c(0,10), bty = "n",
     xaxs = "i", yaxs = "i", type = "n",
     xlab = "Количество, ед.", ylab = "Цена, лв.",
     main = "Б) Разпределение на данъчната тежест")
grid()
segments(40,9,60,1, lwd = 2) # D
text(40,9.3, "D")
segments(10,1,90,9, lwd = 2, col = "darkgray") # S 
text(90,9.3, expression("S"[1]))
segments(0,5,50,5, lwd = 2, lty = 2, col = "darkgray")
segments(50,7,50,0, lwd = 2, lty = 2, col = "darkgray")
segments(0,7,50,7, lwd = 2, lty = 2, col = "darkgray")
segments(45,7,50,7, lwd = 2, lty = 2, col = "red")
segments(10,3,70,9, lwd = 2) # S2
text(70,9.3, expression("S"[2]))
text(53,5, expression("E"[1]), adj = 0)
text(49,6.5, expression("E"[2]))
text(49,7.3, expression("Q"[S]))
text(41,7.3, expression("Q"[D]))
text(50,4.3, expression("Q"[S2]))
segments(0,6.6,46,6.6, lwd = 2, lty = 2, col = "darkblue")
segments(46,6.6,46,0, lwd = 2, lty = 2, col = "darkblue")
segments(0,4.6,46,4.6, lwd = 2, lty = 2, col = "darkblue")
rect(0,4.6,46,6, col = "orange", density = 20, border = "transparent")
rect(0,5,46,6.6, col = "green", density = 20, border = "transparent")
dev.off()




png("file9.png")
par(mfrow = c(1,2))
plot(1, xlab = "Количество, единици", ylab = "Цена, лв.", 
     type = "n", xaxs = "i", yaxs = "i", 
     xlim = c(0,100), ylim = c(0,10), bty = "n",
     main = "А) Данъчен ефект при еластични D и S")
grid()
segments(10,7,90,3, lwd = 2) # D
segments(10,3,90,7, lwd = 2) # S
segments(10,4,70,7, lwd = 2, col = "darkgray") # S2
segments(0,5,50,5, lwd = 2, lty = 2, col = "darkgray")
segments(50,6,50,0, lwd = 2, lty = 2, col = "darkgray")
segments(0,6,50,6, lwd = 2, lty = 2, col = "darkgray")
rect(0,4.5,40,5.5, col = adjustcolor("red", alpha.f = 0.3), border = "darkred")
text(10,7.3, "D")
text(90,7.3, expression("S"[1]))
text(70,7.3, expression("S"[2]))
plot(1, xlab = "Количество, единици", ylab = "Цена, лв.", 
     type = "n", xaxs = "i", yaxs = "i", 
     xlim = c(0,100), ylim = c(0,10), bty = "n",
     main = "Б) Данъчен ефект при нееластични D и S")
grid()
segments(40,9,60,1, lwd = 2) # D
segments(40,1,60,9, lwd = 2) # S
segments(40,2,58,9, lwd = 2, col = "darkgray") # S2
segments(0,5,50,5, lwd = 2, lty = 2, col = "darkgray")
segments(0,6,50,6, lwd = 2, lty = 2, col = "darkgray")
segments(50,6,50,0, lwd = 2, lty = 2, col = "darkgray")
rect(0,4.5,48.5,5.5, col = adjustcolor("red", alpha.f = 0.3), border = "darkred")
text(37,1, expression("S"[1]))
text(37,2, expression("S"[2]))
text(37,9, "D")
dev.off()


prX <- c(3,5,7,9,11,13,15)
prY <- c(27,17,10,7,4,2,1)
prX2 <- prX + 3
prY2 <- prY + 3

plot(prX, prY, type = "o", xlim = c(0,20), ylim = c(0,32), 
     xaxs = "i", yaxs = "i", lwd = 2, pch = 20,
     xlab = "Продукт X", ylab = "Продукт Y",
     main = "Крива на безразличието")
grid()
arrows(3,27,3,17, lty = 5, col = "orange", length = 0.1)
arrows(3,17,5,17, lty = 5, col = "orange", length = 0.1)
arrows(7,10,7,7, lty = 5, col = "orange", length = 0.1)
arrows(7,7,9,7, lty = 5, col = "orange", length = 0.1)
arrows(13,2,13,1, lty = 5, col = "orange", length = 0.1)
arrows(13,1,15,1, lty = 5, col = "orange", length = 0.1)
points(9,17, pch = 20)
text(10,18, "H (9,17)")
text(4,28, "A")
text(6.5,18, "B (5,17)")
text(8,11, "C")
text(10,8, "D (9,7)")
text(12,5, "E")
text(14,3, "F")
text(16,2, "G")
text(2,22, expression(paste(Delta, "Y = -10")), srt = 90, adj = 0.5, cex = 0.7) 
text(4,16, expression(paste(Delta, "X = 2")), adj = 0.5, cex = 0.7)
text(6,8.5, expression(paste(Delta, "Y = -2")), srt = 90, adj = 0.5, cex = 0.7)
text(8,6, expression(paste(Delta, "X = 2")), adj = 0.5, cex = 0.7)
text(16,22, expression("A"%->%"B"~~~~~~"MRS"[XY]~"="~frac(paste(Delta, "Y"), paste(Delta, "X"))~"="~frac(paste("-10"),paste(2))~"="~"-5"), cex = 0.7)
text(16,8.5, expression("C"%->%"D"~~~~~~"MRS"[XY]~~"="~~frac(paste(Delta, "Y"), paste(Delta, "X"))~~"="~~frac(paste("-2"), paste("2"))~~"="~~"-1"), cex = 0.7)
dev.off()

png("%02d.png")
plot(prX, prY, type = "o", xlim = c(0,20), ylim = c(0,32), 
     xaxs = "i", yaxs = "i", lwd = 2, pch = 20,
     xlab = "Продукт X", ylab = "Продукт Y",
     main = "Криви на безразличието")
grid()
points(9,17, pch = 20)
text(10.5,18, "H (9,17)")
text(6.5,18, "B (5,17)")
text(10.5,8, "D (9,7)")
text(3,28, expression("IC"[1]))
text(6.5,30, expression("IC"[2]), adj = 0)
text(10,26, expression("IC"[2]~"полезност"~">"~"IC"[1]~"полезност"), adj = 0)
lines(prX2, prY2, type = "l", col = "darkblue", lwd = 2)
segments(0,17,9,17, lty = 2, col = "grey")
segments(9,0,9,17, lty = 2, col = "grey")
dev.off()

png("file1.png")
plot(x = c(0,15), y = c(30,0), xlim = c(0,35), ylim = c(0,35),
     type = "l", lwd = 2,
     xlab = "Продукт X, единици", ylab = "Продукт Y, единици", 
     xaxs = "i", yaxs = "i",
     main = "Бюджетно ограничение, промяна в цената на X")
grid()
lines(x = c(0,30), y = c(30,0), col = "darkblue", lwd = 2)
points(10,10, pch = 20)
text(11,11, "A")
points(20,10, pch = 20)
text(21,11, "B")
arrows(15,2,27,2, length = 0.1, col = "orange", lwd = 1)
dev.off()

png("file1.png")
plot(x = c(0,15), y = c(30,0), xlim = c(0,70), ylim = c(0,70),
     type = "l", lwd = 2,
     xlab = "Продукт X, единици", ylab = "Продукт Y, единици", 
     xaxs = "i", yaxs = "i",
     main = "Промяна в бюджетното ограничение при неизменни цени")
grid()
lines(x = c(0,30), y = c(60,0), col = "darkblue", lwd = 2)
points(10,10, pch = 20)
text(11,11, "A")
points(20,20, pch = 20)
text(21,21, "B")
arrows(1,31,9,39, length = 0.1, col = "orange", lwd = 1)
arrows(16,1,24,9, length = 0.1, col = "orange", lwd = 1)
dev.off()

(15/x, add = TRUE, from = c(1,1), to = c(15,15))
curve(15/(x+2), add = TRUE, from = c(1,1), to = c(15,15))
curve(15/(x-2), add = TRUE, from = c(1,1), to = c(15,15))


lineX <- seq(3,30, 0.5)
lineY <- 100/lineX

png("file02.png)
plot(lineX, lineY, type = "l", xaxs = "i", yaxs = "i", lwd = 2, col = "darkgray",
     xlim = c(0,35), ylim = c(0,35), bty = "n",
     xlab = "Продукт X, единици", ylab = "Продукт Y, единици",
     main = "Модел на потребителския избор")
grid()
lines(x = c(0,30), y = c(30,0), type = "l", col = "darkblue", lwd = 2)
lines(x = lineX + 5, y = lineY + 5, type = "l", lwd = 2)
lines(x = lineX + 10, y = lineY + 10, type = "l", lwd = 2, col = "darkgray")
points(4,26, pch = 20)
points(26,4, pch = 20)
points(10,10, pch = 20)
points(13,13, pch = 20)
points(15,15, pch = 20)
points(20,20, pch = 20)
text(5,27, "A")
text(27,5, "B")
text(11,10, "C", adj = 0)
text(14,13, "D")
text(16,16, "E")
text(21,21, "F")
text(5,34, expression("IC"[1]))
text(10,34, expression("IC"[2]))
text(15,34, expression("IC"[3]), adj = 0)
dev.off()


png("file2.png")
plot(lineX, lineY, xaxs = "i", yaxs = "i", 
     type = "n", lwd = 2, col = "darkgray",
     xlim = c(0,70), ylim = c(0,50), bty = "n",
     xlab = "Продукт X, единици", ylab = "Продукт Y, единици",
     main = "Модел на потребителския избор,\nпромяна в цената на X")
grid()
lines(x = c(0,30), y = c(30,0), type = "l", col = "darkblue", lwd = 2)
lines(x = c(0,60), y = c(30,0), type =  "l" ,col = "darkgreen", lwd = 2)
lines(x = lineX + 5, y = lineY + 5, type = "l", lwd = 2)
lines(x = lineX + 10.625, y = lineY + 10.625, type = "l", lwd = 2, col = "darkorange")
points(15,15, pch = 20)
points(24,18, pch = 20)
#points(20,20, pch = 20)
text(16,17, "E")
text(26,19, "G", adj = 0)
text(11,38, expression("IC"[2]))
text(15,43, expression("IC"[4]), adj = 0)
dev.off()


legend(17,3.3, c("Иван", "Мария", "Георги"), 
       col = c("blue", "green", "red"),  
       bty = "n", lty = c(1,1), cex = 0.7)


