## Script para definir as funcións que xeneran os puntos de apalancamento
## Eduardo Corbelle, 26 de setembro de 2015

# Función 1: punto de apalancamento no centro do rango de x
LevPointCentre <- function(x) {
  x1 = mean(range(x))
  return(x1)
}

# Función 2: punto de apalancamento no extremo do rango de x
LevPointExtreme <- function(x) {
  # Detectamos o máximo de x
  x1 = max(x)
  # Detectamos o segundo por arriba
  x2 = max(x[-which(x==max(x))])
  # Creamos o seguinte punto
  x3 = x1 + (x1-x2)
  return(x3)
}