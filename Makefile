all: Diapos.pdf Figures/Central000.pdf Screenshot.png

Figures/Central000.pdf: Scripts/DatosIniciais.R Scripts/ForLoop.R Scripts/Leverage.R Scripts/OutGraphics.R
	# Xenerar os datos iniciais
	R CMD BATCH Scripts/DatosIniciais.R Scripts/DatosIniciais.Rout
	# Funcións para definir puntos de apalancamento
	R CMD BATCH Scripts/Leverage.R Scripts/Leverage.Rout
	# Función para crear os gráficos
	R CMD BATCH Scripts/OutGraphics.R Scripts/OutGraphics.Rout
	# Bucle para crear os gráficos
	R CMD BATCH Scripts/ForLoop.R Scripts/ForLoop.Rout

Screenshot.png: Figures/ExtremoR075.pdf
	convert Figures/ExtremoR075.pdf Screenshot.png

Diapos.pdf: Diapos.tex Figures/Central000.pdf
	# Crear as diapositivas de exemplo
	pdflatex Diapos.tex