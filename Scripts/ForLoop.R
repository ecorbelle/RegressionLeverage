## Script para xenerar finalmente os gráficos mediante un bucle
## Eduardo Corbelle, 26 de setembro de 2015

## Gráficos de apalancamento central
x1 = LevPointCentre(x)
y1 = Link(x1)

for(i in 0:99) {
  CreatePDF(x, y, x1, y1, i, 100, "Central", robust=FALSE)
}

## Gráficos de apalancamento no extremo
x1 = LevPointExtreme(x)
y1 = Link(x1)

for(i in 0:99) {
  CreatePDF(x, y, x1, y1, i, 100, "Extremo", robust=FALSE)
}

## Gráficos de apalancamento no extremo (regresión robusta)
x1 = LevPointExtreme(x)
y1 = Link(x1)

for(i in 0:99) {
  CreatePDF(x, y, x1, y1, i, 100, "ExtremoR", robust=TRUE)
}