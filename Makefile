# Archivo Makefile para compilar la tesis
# Uso: make pdf (o simplemente make)
#      make clean
#      make view

# Variables
MAIN = tesis_maestria
LATEX = pdflatex
BIBTEX = bibtex
VIEWER = start  # Para Windows, usar 'open' en macOS o 'xdg-open' en Linux

# Regla por defecto
.PHONY: all pdf clean view help

all: pdf

# Compilar el documento completo
pdf:
	@echo "Compilando tesis de maestría..."
	$(LATEX) $(MAIN).tex
	$(BIBTEX) $(MAIN)
	$(LATEX) $(MAIN).tex
	$(LATEX) $(MAIN).tex
	@echo "¡Compilación completada! Archivo generado: $(MAIN).pdf"

# Compilación rápida (sin bibliografía)
quick:
	@echo "Compilación rápida..."
	$(LATEX) $(MAIN).tex
	@echo "¡Compilación rápida completada!"

# Limpiar archivos temporales
clean:
	@echo "Limpiando archivos temporales..."
	del /Q *.aux *.log *.bbl *.blg *.toc *.lot *.lof *.out *.fls *.fdb_latexmk *.synctex.gz 2>nul || echo "Algunos archivos ya estaban limpios"
	@echo "¡Limpieza completada!"

# Limpiar todo (incluyendo PDF)
clean-all: clean
	@echo "Eliminando PDF generado..."
	del /Q $(MAIN).pdf 2>nul || echo "PDF no encontrado"
	@echo "¡Limpieza completa terminada!"

# Ver el PDF generado
view: pdf
	@echo "Abriendo PDF..."
	$(VIEWER) $(MAIN).pdf

# Mostrar ayuda
help:
	@echo "Makefile para Tesis de Maestría en Analítica de Datos"
	@echo ""
	@echo "Comandos disponibles:"
	@echo "  make pdf      - Compilar documento completo con bibliografía"
	@echo "  make quick    - Compilación rápida sin bibliografía"
	@echo "  make clean    - Limpiar archivos temporales"
	@echo "  make clean-all- Limpiar todo incluyendo PDF"
	@echo "  make view     - Compilar y abrir PDF"
	@echo "  make help     - Mostrar esta ayuda"
	@echo ""
	@echo "Archivos principales:"
	@echo "  $(MAIN).tex   - Documento principal"
	@echo "  portada/      - Archivos de portada y preliminares"
	@echo "  capitulos/    - Capítulos de la tesis"
	@echo "  bibliografia/ - Referencias bibliográficas"
	@echo "  apendices/    - Apéndices y material complementario"
