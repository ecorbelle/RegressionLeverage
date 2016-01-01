## Script para xenerar os datos iniciais
## Eduardo Corbelle, 26 de setembro de 2015

# Tamaño de mostra:
N = 20

# Creamos unha variable x, extraída dunha normal
x <- rnorm(N)

# Definimos a función de enlace entre x e y 
# (inclúe unha compoñente de ruido)
Link <- function(x) {
  y = 2*x + rnorm(length(x))
  return(y)
}

# Xeneramos a variable y
y <- Link(x)