

## color definitions
clrs <- c("#1f78b4", "#eb6864", "#33a02c") # "#a6cee3", "#b2df8a"

# png(file = "qerm514_logo_plots.png",
#     width = 800, height = 240, res = 240)

pdf(file = "qerm514_logo_plots.pdf",
    width = 12, height = 3)

par(omi = c(0, 0, 0, 1.2),
    mai = c(0.6, 1.2, 0.1, 0),
    mfrow = c(1, 3))

## binomial
plot(c(0, 1), c(0.1, 0.9), type = "l", ylim = c(0, 1),
     lwd = 3, col = clrs[1],
     yaxt = "n",
     xaxt = "n",
     ylab = "",
     xlab = "",
     cex.lab = 2)
axis(2, at = c(0, 1),
     labels = c(expression(-infinity), expression(+infinity)),
     las = 1, cex.axis = 2.2)
mtext(expression(italic(y)), side = 2, line = 3.3, cex = 1.5, las = 2)
mtext(expression(italic(x)), side = 1, line = 3, cex = 1.5, las = 1)

## binomial
curve(plogis, -5, 5,
      lwd = 3, col = clrs[2],
      yaxt = "n",
      xaxt = "n",
      ylab = "",
      xlab = "",
      cex.lab = 2)
axis(2, at = c(0, 1), las = 1, cex.axis = 2.2)
mtext(expression(italic(y)), side = 2, line = 3.3, cex = 1.5, las = 2)
mtext(expression(italic(x)), side = 1, line = 3, cex = 1.5, las = 1)

## binomial
curve(exp, -1, 3,
      lwd = 3, col = clrs[3],
      yaxt = "n",
      xaxt = "n",
      ylab = "",
      xlab = "",
      cex.lab = 2)
axis(2, at = c(0, exp(3)),
     labels = c(0, expression(+infinity)),
     las = 1, cex.axis = 2.2)
mtext(expression(italic(y)), side = 2, line = 3.3, cex = 1.5, las = 2)
mtext(expression(italic(x)), side = 1, line = 3, cex = 1.5, las = 1)

dev.off()

