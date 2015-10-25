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


png("file12.png")
par(mfrow = c(1,2))
plot(1, xlab = "Количество, единици", ylab = "Цена, лв.", 
     type = "n", xaxs = "i", yaxs = "i", 
     xlim = c(0,100), ylim = c(0,10), bty = "n",
     main = "А) Ефект от субсидия при еластични D и S")
grid()
segments(10,7,90,3, lwd = 2) # D
segments(10,3,90,7, lwd = 2) # S
text(50,5.3, expression("E"[1]))
text(50,6.5, expression("Q"[D]))
text(70,6.5, expression("Q"[S]))
segments(10,2,90,6, lwd = 2, col = "darkgray") # S2
text(67,4.5, expression("E"[2]))
segments(0,5,70,5, lwd = 2, lty = 2, col = "darkgray")
segments(50,6,50,0, lwd = 2, lty = 2, col = "darkgray")
segments(70,6,70,0, lwd = 2, lty = 2, col = "darkgray")
segments(60,4.5,60,0, lwd = 2, lty = 2, col = "darkgray")
segments(50,5,70,5, lwd = 2, lty = 2, col = "green")
segments(50,6,70,6, lwd = 2, lty = 2, col = "green")
text(95,3, "D")
text(95,7, expression("S"[1]))
text(95,6, expression("S"[2]))
rect(0,3.5,60,4.5, col = adjustcolor("green", alpha.f = 0.3), border = "darkgreen")
plot(1, xlab = "Количество, единици", ylab = "Цена, лв.", 
     type = "n", xaxs = "i", yaxs = "i", 
     xlim = c(0,100), ylim = c(0,10), bty = "n",
     main = "Б) Ефект от субсидия при нееластични D и S")
grid()
segments(30,9,70,1, lwd = 2) # D
segments(30,1,70,9, lwd = 2) # S
text(50,5.5, expression("E"[1]))
#text(50,6.5, expression("Q"[D]))
#text(55,6.5, expression("Q"[S]))
text(30,9.3, "D")
text(70,9.3, expression("S"[1]))
text(75,9.3, expression("S"[2]))
segments(35,1,75,9, lwd = 2, col = "darkgray") # S2
text(56,4.5, expression("E"[2]))
segments(0,5,55,5, lwd = 2, lty = 2, col = "darkgray")
segments(50,6,50,0, lwd = 2, lty = 2, col = "darkgray")
segments(55,6,55,0, lwd = 2, lty = 2, col = "darkgray")
segments(0,4.5,52.5,4.5, lwd = 2, lty = 2, col = "darkgray")
segments(52.5,4.5,52.5,0, lwd = 2, lty = 2, col = "darkgray")
segments(50,5,55.5,5, lwd = 2, lty = 2, col = "green")
segments(50,6,55,6, lwd = 2, lty = 2, col = "green")
rect(0,3.5,52.5,4.5, col = adjustcolor("green", alpha.f = 0.3), border = "darkgreen")
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

### Production

# load data - perfect competition

prcompDF <- read.csv("data/production-competition.csv")
head(prcompDF)

png("productionarea.png")
par(mfrow = c(2,1), mar = c(4,4,2,2))
plot(x = c(0, prcompDF$L), y = c(0, prcompDF$TP), 
     xaxs = "i", yaxs = "i", bty = "n", type = "o", 
     lwd = 2, pch = 20,
     xlab = "Работници, бр.", ylab = "Общ продукт",
     xlim = c(0,11), ylim = c(0,90))
title(main = "Общ, среден и пределен продукт")
grid()
text(10.5,83, "TP")
rect(0,0,5,90, col = adjustcolor("green", alpha.f = 0.1), border = "transparent")
rect(5,0,6,90, col = adjustcolor("yellow", alpha.f = 0.1), border = "transparent")
rect(6,0,10,90, col = adjustcolor("red", alpha.f = 0.1), border = "transparent")
plot(x = prcompDF$L, y = prcompDF$TP, 
     xaxs = "i", yaxs = "i", bty = "n", type = "n", 
     xlab = "Работници, бр.", ylab = "Среден и пределен продукт",
     xlim = c(0,11), ylim = c(0,20))
grid()
lines(x = prcompDF$L, y = prcompDF$AP, 
      lwd = 2, col = "red", type = "o", pch = 20)
lines(x = prcompDF$L, y = prcompDF$MP,
      lwd = 2, col = "darkred", type = "o", pch = 20)
text(10.5,8.3, "AP")
text(10.5,1, "MP")
rect(0,0,5,20, col = adjustcolor("green", alpha.f = 0.1), border = "transparent")
rect(5,0,6,20, col = adjustcolor("yellow", alpha.f = 0.1), border = "transparent")
rect(6,0,10,20, col = adjustcolor("red", alpha.f = 0.1), border = "transparent")
dev.off()

png("tcfcvc.png")
plot(x = c(0, prcompDF$TP), y = c(100, prcompDF$TC), 
     type = "o", pch = 20,
     lwd = 2, xaxs = "i", yaxs = "i", bty = "n",
     xlim = c(0,100), ylim = c(0,1620), 
     xlab = "Количество, бр.", ylab = "Разходи, лв.",
     main = "Постоянни, променливи и общи разходи")
grid()
lines(x = c(0, prcompDF$TP), y = c(100, prcompDF$FC), 
      lwd = 2, type = "o", pch = 20)
text(87,50, "FC")
text(87,822.5, "VC")
text(87, 1600, "TC=FC+VC")
rect(0,0,83,100, col = adjustcolor("orange", alpha.f = 0.3), 
     border = "transparent")
polygon(c(0,prcompDF$TP,rev(prcompDF$TP),0), 
	c(100,prcompDF$TC,rep(100, length(prcompDF$TC)+1)),
	col = adjustcolor("yellow", alpha.f = 0.3), 
	border = "transparent")
dev.off()

# Plot AP, MP, AC, MC
png("product-costs.png")
par(mfrow = c(2,1), mar = c(3,4,3,1))
plot(x = prcompDF$L, y = prcompDF$AP, bty = "n",
     type = "o", pch = 20, lwd = 2, col = "red",
     xaxs = "i", yaxs = "i", 
     xlim = c(0,11), ylim = c(0,20), 
     xlab = "", ylab = "Среден и пределен продукт",
     main = "Средни и пределни продукт и разходи")
grid()
mtext("Работници, бр.", side = 1, line = 2)
lines(x = prcompDF$L, y = prcompDF$MP, lwd = 2, type = "o", pch = 20, col = "darkred")
text(10.5,8.3, "AP")
text(10.5,1, "MP")
rect(0,0,5,20, col = adjustcolor("green", alpha.f = 0.1), border = "transparent")
rect(5,0,6,20, col = adjustcolor("yellow", alpha.f = 0.1), border = "transparent")
rect(6,0,10,20, col = adjustcolor("red", alpha.f = 0.1), border = "transparent")
plot(x = prcompDF$L, y = prcompDF$ATC, bty = "n",
     type = "o", pch = 20, lwd = 2, col = "red",
     xaxs = "i", yaxs = "i", 
     xlim = c(0,11), ylim = c(0,45), 
     xlab = "", ylab = "Средни и пределни разходи")
grid()
lines(x = prcompDF$L, y = prcompDF$MC, lwd = 2, type = "o", pch = 20, col = "darkred")
axis(3, at = 0:10, labels = c(0, prcompDF$TP), lty = 2, 
     outer = FALSE, cex.axis = 0.7, padj = 1, tcl = -0.5, line = -1)
mtext("Общ продукт, бр.", side = 3, line = 1, cex = 0.7)
mtext("Работници, бр.", side = 1, line = 2)
text(10.5,18.61, "ATC")
text(10.5,35, "MC")
rect(0,0,5,39, col = adjustcolor("green", alpha.f = 0.1), border = "transparent")
rect(5,0,6,39, col = adjustcolor("yellow", alpha.f = 0.1), border = "transparent")
rect(6,0,10,39, col = adjustcolor("red", alpha.f = 0.1), border = "transparent")
dev.off()

png("atc.png")
plot(x = prcompDF$TP, y = prcompDF$ATC, 
     type = "o", lwd = 2, col = "red", pch = 20, 
     xaxs = "i", yaxs = "i", xlim = c(0,115), ylim = c(0,40),
     bty = "n", xlab = "Количество, бр.", ylab = "Разходи",
     main = "Средни разходи")
grid()
lines(x = prcompDF$TP, y = prcompDF$AVC, type = "o", lwd = 2,
      pch = 20, col = "darkorange")
lines(x = prcompDF$TP, y = prcompDF$AFC, type = "o", lwd = 2,
      pch = 20, col = "yellow")
text(87,18.61, "ATC=AFC+AVC", adj = 0)
text(87,17.41, "AVC", adj = 0)
text(87,1.2, "AFC", adj = 0)
dev.off()


# create a vector for MC that shows it as intervals
mcinterval <- rep(prcompDF$MC, each = 2)
mcinterval
# create the corresponding vector for TP
prcompDF$TP
temp1 <- as.vector(rep(0, length(prcompDF$TP)))
for (i in 2:length(temp1)) {temp1[i] <- prcompDF$TP[i-1]}
temp1
tpinterval <- as.vector(rep(0, 2*length(temp1)))
for (i in 1:length(temp1)) {
	tpinterval[2*i-1] <- temp1[i] + 1
	tpinterval[2*i] <- prcompDF$TP[i]
}
tpinterval
# create a dataframe for plotting that combines them and
# add price at 20 and 25 leva
mcintervalgraphDF <- data.frame(tpinterval, mcinterval, rep(20, length(mcinterval)), rep(25, length(mcinterval)))
colnames(mcintervalgraphDF) <- c("TP","MC","MR1","MR2")
head(mcintervalgraphDF)
write.table(mcintervalgraphDF, file = "data/mcintervalgraphDF.csv",
	    row.names = FALSE, sep = ",")


# A graph that shows MC as intervals
png("showmc.png")
plot(x = mcintervalgraphDF$TP, y = mcintervalgraphDF$MC,
     xaxs = "i", yaxs = "i", xlim = c(0,85), ylim = c(10,40),
     xlab = "Продукция, бр.", ylab = "Пределни разходи, лв.",
     type = "o", lwd = 2, col = "darkred", pch = 20, 
     bty = "n", main = "Представяне на пределните разходи")
grid()
lines(x = prcompDF$TP, y = prcompDF$MC, type = "l", 
      col = "red", lty = 2)
#segments(0,20,83,20, col = "darkblue", lwd = 2)
#rect(60,15,83,25, col = adjustcolor("lightblue", alpha.f = 0.1), border = "lightblue")
arrows(1.3,38,4.6,38, code = 3, length = 0.05, angle = 15)
text(2.8,37, "39\nлв/ед.", cex = 0.7)
arrows(19.3,15.43,31.7,15.43, code = 3, length = 0.05, angle = 15) 
text(25.5,14.43, "от 19 до 32 ед.\n - по 16.43 лв/ед.", cex = 0.7)
arrows(12.3,16.86,17.7,16.86, code = 3, length = 0.05, angle = 15)
text(15,15.86, "17.86\nлв/ед.", cex = 0.7)
arrows(6.3,17.33,10.7,17.33, code = 3, length = 0.05, angle = 15)
text(8.5,16.33, "18.33\nлв/ед.", cex = 0.7)
arrows(33.3,15.11,49.7,15.11, code = 3, length = 0.05, angle = 15)
text(41.5,14.11, "от 33 до 50 ед.\n - по 16.11 лв/ед.", cex = 0.7)
arrows(51.3,15.11,67.7,15.11, code = 3, length = 0.05, angle = 15)
text(59.5,14.11, "от 51 до 68 ед.\n - по 16.11 лв/ед.", cex = 0.7)
arrows(69.3,16.22,76.7,16.22, code = 3, length = 0.05, angle = 15)
text(73,15.22, "17.22\nлв/ед.", cex = 0.7)
dev.off()


# create a table to view MC as interval
mcintervalDF <- data.frame(1:10, temp1, prcompDF$TP, 
			   prcompDF$MC, prcompDF$MR)
# adjust the interval properly
mcintervalDF$temp1 <- mcintervalDF$temp1 + 1
head(mcintervalDF)
colnames(mcintervalDF) <- c("rabotnik","ot_kg","do_kg","MC","MR")
mcintervalDF$rezultat_ot_kg <- mcintervalDF$MR - mcintervalDF$MC
mcintervalDF <- transform(mcintervalDF, rezultat_w_interwala = round(rezultat_ot_kg * (do_kg - ot_kg + 1), digits = 0))
mcintervalDF$obsht_rezultat <- prcompDF$profit
mcintervalDF

write.csv(mcintervalDF, file = "data/mcinterval.csv", sep = ",", row.names = FALSE)


# relation between AP, MP and TC
# not shown in lecture
png("AP-MP-TC.png")
par(mfrow = c(2,1), mar = c(3,4,3,1))
plot(x = prcompDF$L, y = prcompDF$AP, bty = "n",
     type = "o", pch = 20, lwd = 2, col = "red",
     xaxs = "i", yaxs = "i", 
     xlim = c(0,11), ylim = c(0,20), 
     xlab = "", ylab = "Среден и пределен продукт",
     main = "Среден и пределен продукт и общи разходи")
grid()
mtext("Работници, бр.", side = 1, line = 2)
lines(x = prcompDF$L, y = prcompDF$MP, lwd = 2, type = "o", pch = 20, col = "darkred")
text(10.5,8.3, "AP")
text(10.5,1, "MP")
rect(0,0,5,20, col = adjustcolor("green", alpha.f = 0.1), border = "transparent")
rect(5,0,6,20, col = adjustcolor("yellow", alpha.f = 0.1), border = "transparent")
rect(6,0,10,20, col = adjustcolor("red", alpha.f = 0.1), border = "transparent")
plot(x = prcompDF$L, y = prcompDF$TC, 
     type = "o", pch = 20,
     lwd = 2, xaxs = "i", yaxs = "i", bty = "n",
     xlim = c(0,11), ylim = c(0,1670), 
     xlab = "Количество, бр.", ylab = "Общи разходи, лв.",
     main = "")
grid()
text(87, 1600, "TC")
axis(3, at = 0:10, labels = c(0, prcompDF$TP), lty = 2, 
     outer = FALSE, cex.axis = 0.7, padj = 1, tcl = -0.5, line = -1)
mtext("Общ продукт, бр.", side = 3, line = 1, cex = 0.7)
mtext("Работници, бр.", side = 1, line = 2)
rect(0,0,5,1670, col = adjustcolor("green", alpha.f = 0.1), border = "transparent")
rect(5,0,6,1670, col = adjustcolor("yellow", alpha.f = 0.1), border = "transparent")
rect(6,0,10,1670, col = adjustcolor("red", alpha.f = 0.1), border = "transparent")
dev.off()


prcomp_more_DF <- read.csv("data/production-competition-more-capital.csv")

# Draw a new ATC curve with more capital
# Long-run average costs intro

png("atc-shift.png")
plot(xlim = c(0,160), ylim = c(0,50), xaxs = "i", yaxs = "i",
     bty = "n", xlab = "Обща продукция, бр.", ylab = "Разходи",
     x = prcomp_more_DF$TP, y = prcomp_more_DF$ATC, 
     type = "o", lwd = 2, col = "red", pch = 20,
     main = "Средни разходи при промяна в капитала")
grid()
#lines(x = prcomp_more_DF$TP, y = prcomp_more_DF$MC, 
#      type = "o", lwd = 2, pch = 20, col = "darkred")
lines(x = prcompDF$TP, y = prcompDF$ATC,
      type = "o", lwd = 2, pch = 20, col = "red")
#lines(x = prcompDF$TP, y = prcompDF$MC,
#      type = "o", lwd = 2, pch = 20, col = "darkred")
dev.off()

png("ltc.png")
plot(xlim = c(0,340), ylim = c(0,50),
     xaxs = "i", yaxs = "i", bty = "n",
     x = 1:10, y = 1:10, type = "n",
     xaxt = "n",
     xlab = "Обща продукция, бр.", ylab = "Разходи, лв.",
     main = "Средни краткосрочни и дългосрочни разходи")
axis(side = 1, at = c(0,20,40,60,80,100,120,140,160,180,200,220,240,260,280,300,340))
grid()
curve((1/8*x-10)^2 + 21.50, add = TRUE, 
      from = 50, to = 110, lwd = 2, col = "red")
curve((1/8*x-15)^2 + 16.7, add = TRUE, 
       from = 90, to = 150, lwd = 2, col = "darkorange")
curve((1/8*x-20)^2 + 15, add = TRUE,
      from = 130, to = 190, lwd = 2, col = "red")
curve((1/8*x-25)^2 + 16.7, add = TRUE,
      from = 170, to = 230, lwd = 2, col = "darkorange")
curve((1/8*x-30)^2 + 21.50, add = TRUE,
      from = 210, to = 270, lwd = 2, col = "red")
curve((1/32*x-5)^2 + 15, add = TRUE,
      from = 10, to = 310, lwd = 2, col = "darkred")
text(110,(21.5+16), expression("SAC"[1]), cex = 0.7)
text(150,(16.7+16), expression("SAC"[2]), cex = 0.7)
text(190,(15+16), expression("SAC"[3]), cex = 0.7)
text(230,(16.7+16), expression("SAC"[4]), cex = 0.7)
text(270,(21.5+16), expression("SAC"[5]), cex = 0.7)
text(310,40, "LAC", cex = 0.7)
segments(132,0,132,27.24, lty = 2, col = "blue")
segments(148,0,148,28.95, lty = 2, col = "green")
# При 132 бройка - AC2 = 18.95 лв. и AC3 = 27.25 лв.
# При 148 бройка - AC2 = 28.95 лв. и AC3 = 17.25 лв.
dev.off()


# Prihodi, razhodi, zoom
png("pc-profit.png")
plot(x = prcompDF$TP, y = prcompDF$MC, 
     type = "o", pch = 20, cex = 2, lwd = 3,
    xaxs = "i", yaxs = "i", xlim = c(70,85), ylim = c(17,22),
   col = "darkred", main = "Разходи, приходи и печалба (увеличение)",
   xlab = "Продукция, бр.", ylab = "Разходи, лв.")
grid()
lines(x = prcompDF$TP, y = prcompDF$AVC, 
      type = "o", lwd = 3, pch = 20, 
      cex = 2, col = "orange")
lines(x = prcompDF$TP, y = prcompDF$ATC, 
      type = "o", pch = 20, 
      cex = 2, lwd = 3, col = "red")
lines(x = prcompDF$TP, y = prcompDF$MR,
      type = "o", pch = 20, 
      cex = 2, lwd = 3, col = "darkblue")
text(76.5,20.2, expression("P"[1]))
text(76.5,17.4, expression("C"[1]))
text(80.6,21.5, expression("P"[2]))
text(80.6,20.2, expression("C"[2]))
arrows(77,17.32,77,19.9, code = 3, lwd = 2, 
       lty = 2, length = 0.2 , angle = 15 )
arrows(80,20.1,80,21.57, code = 3, lwd = 2,
       lty = 2, length = 0.2, angle = 15)
text(76,18.61, "+2.78 лв.", srt = 90, col = "darkgreen")
text(81,20.835, "-1.67 лв.", srt = 90, col = "red")
dev.off()


mcintervalgraphDF <- read.csv("./data/mcintervalgraphDF.csv")


# profit decisions by a competitive firm
png("pc-profit-max.png")
par(mfrow = c(1,2))
plot(x = mcintervalgraphDF$TP, y = mcintervalgraphDF$MC,
     xaxs = "i", yaxs = "i", xlim = c(0,100), ylim = c(10,40),
     xlab = "Продукция, бр.", ylab = "Разходи и приходи, лв.",
     type = "o", lwd = 2, col = "darkred", pch = 20, 
     bty = "n", main = "Максимална печалба")
grid(nx=10)
#lines(x = prcompDF$TP, y = prcompDF$MC, type = "l", 
#      col = "red", lty = 2)
lines(x = prcompDF$TP, y = prcompDF$ATC, type = "o", 
      col = "red", lwd = 2, pch = 20)
lines(x = c(0,prcompDF$TP), y = c(20,prcompDF$MR), type = "o",
      col = "darkblue", lwd = 2, pch = 20)
text(87,18.61, "ATC", adj = 0)
text(87,35, "MC", adj = 0)
text(87,20, "P=MR", adj = 0)
rect(0,0,77,18.12, col = adjustcolor("red", alpha.f = 0.1),
     border = "transparent")
rect(0,18.12,77,20, col = adjustcolor("green", alpha.f = 0.1),
     border = "transparent")
plot(x = mcintervalgraphDF$TP, y = mcintervalgraphDF$MC,
     xaxs = "i", yaxs = "i", xlim = c(0,100), ylim = c(10,40),
     xlab = "Продукция, бр.", ylab = "Разходи и приходи, лв.",
     type = "o", lwd = 2, col = "darkred", pch = 20, 
     bty = "n", main = "Печалба при най-ниски\nпределни разходи")
grid(nx=10)
#lines(x = prcompDF$TP, y = prcompDF$MC, type = "l", 
#      col = "red", lty = 2)
lines(x = prcompDF$TP, y = prcompDF$ATC, type = "o", 
      col = "red", lwd = 2, pch = 20)
lines(x = c(0,prcompDF$TP), y = c(20,prcompDF$MR), type = "o",
      col = "darkblue", lwd = 2, pch = 20)
text(87,18.61, "ATC", adj = 0)
text(87,35, "MC", adj = 0)
text(87,20, "P=MR", adj = 0)
rect(0,0,50,19, col = adjustcolor("red", alpha.f = 0.1),
     border = "transparent")
rect(0,19,50,20, col = adjustcolor("green", alpha.f = 0.1),
     border = "transparent")
dev.off()


# max profit with increase in the price
png("pc-profit-max-25.png", width=1200, height=600)
par(mfrow = c(1,2))
plot(x = mcintervalgraphDF$TP, y = mcintervalgraphDF$MC,
     xaxs = "i", yaxs = "i", xlim = c(0,100), ylim = c(10,40),
     xlab = "Продукция, бр.", ylab = "Разходи и приходи, лв.",
     type = "o", lwd = 2, col = "darkred", pch = 20, 
     bty = "n", main = "Максимална печалба\nпри цена 20 лв.")
grid(nx=10)
#lines(x = prcompDF$TP, y = prcompDF$MC, type = "l", 
#      col = "red", lty = 2)
lines(x = prcompDF$TP, y = prcompDF$ATC, type = "o", 
      col = "red", lwd = 2, pch = 20)
lines(x = c(0,prcompDF$TP), y = c(20,prcompDF$MR), type = "o",
      col = "darkblue", lwd = 2, pch = 20)
text(87,18.61, "ATC", adj = 0)
text(87,35, "MC", adj = 0)
text(87,20, "P=MR", adj = 0)
rect(0,0,77,18.12, col = adjustcolor("red", alpha.f = 0.1),
     border = "transparent")
rect(0,18.12,77,20, col = adjustcolor("green", alpha.f = 0.1),
     border = "transparent")
plot(x = mcintervalgraphDF$TP, y = mcintervalgraphDF$MC,
     xaxs = "i", yaxs = "i", xlim = c(0,100), ylim = c(10,40),
     xlab = "Продукция, бр.", ylab = "Разходи и приходи, лв.",
     type = "o", lwd = 2, col = "darkred", pch = 20, 
     bty = "n", main = "Максимална печалба\nпри цена 25 лв.")
grid(nx=10)
#lines(x = prcompDF$TP, y = prcompDF$MC, type = "l", 
#      col = "red", lty = 2)
lines(x = prcompDF$TP, y = prcompDF$ATC, type = "o", 
      col = "red", lwd = 2, pch = 20)
lines(x = c(0,prcompDF$TP), y = c(25,prcompDF$MR2), type = "o",
      col = "darkblue", lwd = 2, pch = 20)
text(87,18.61, "ATC", adj = 0)
text(87,35, "MC", adj = 0)
text(87,25, "P=MR", adj = 0)
rect(0,0,80,18.25, col = adjustcolor("red", alpha.f = 0.1),
     border = "transparent")
rect(0,18.25,80,25, col = adjustcolor("green", alpha.f = 0.1),
     border = "transparent")
dev.off()

