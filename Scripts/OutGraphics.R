## Script para xenerar os gráficos de saída
## Eduardo Corbelle, 26 de setembro de 2015

CreatePDF <- function(x, y, x1, y1, i, n, name, robust) {
  # x e y: datos iniciais
  # i: número de orde (para usar no bucle)
  # n: número de repeticións (rango de i)
  # name: nome das figuras (para diferenciar centro e extremo)
  # robust (loxico): se TRUE, inclúe regresión por M-estimador de Huber
  pdf(paste("./Figures/", name, sprintf("%03d", i), ".pdf", sep=""), height=7, width=7*1.5)
  par(mar=c(4,4,1,1)+.1, cex.lab=1.25, cex.axis=1.25, cex=1.25, lwd=1.5)
  
  y2 = y1 + (max(y)-min(y))*sin(i*2*pi/n)
    
  xf = c(x, x1)
  yf = c(y, y2)
  
  ymin = min(y, y1 - (max(y)-min(y)))
  ymax = y1 + (max(y)-min(y))*1.1
  
  plot(xf, yf,
       pch=19, col=c(rep("grey", length(x)), "orange"),
       ylim = c(ymin, ymax))
  abline(lm(y~x), col="grey", lty=2)
  abline(lm(yf~xf), col="orange")
  if(robust==TRUE) {
    library(MASS)
    abline(rlm(yf~xf), col="brown")
    legend("topleft", bty="n",
           lty=1,
           col=c("orange", "brown"),
           legend=c("Mínimos cuadrados", "M-estimador Huber"))
  }
  
  dev.off()
}