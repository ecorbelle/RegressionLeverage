## Scripts para crear animacións de efectos de apalancamento en regresión lineal simple
## Eduardo Corbelle, 26 de setembro de 2015

# Tamaño de mostra:
N = 20

## Xenerar os datos iniciais
source("Scripts/DatosIniciais.R")
## Funcións para definir puntos de apalancamento
source("Scripts//Leverage.R")
## Función para crear os gráficos
source("Scripts//OutGraphics.R")
## Bucle para crear os gráficos
source("Scripts//ForLoop.R")
## Crear as diapositivas de exemplo
system("pdflatex Diapos.tex")
