# Archivo de configuración LaTeX para el proyecto de tesis
# Este archivo puede ser incluido en editores como TeXstudio o Overleaf

# Configuración del proyecto
project.name = "Tesis de Maestría en Analítica de Datos"
project.main = "tesis_maestria.tex"
project.encoding = "UTF-8"

# Configuración de compilación
latex.compiler = "pdflatex"
latex.bibliography = "bibtex"
latex.output.format = "pdf"

# Directorios del proyecto
directories.chapters = "capitulos/"
directories.images = "imagenes/"
directories.bibliography = "bibliografia/"
directories.appendices = "apendices/"
directories.frontmatter = "portada/"

# Configuración de editor (TeXstudio/VS Code)
editor.tab.size = 4
editor.auto.indent = true
editor.spell.check = true
editor.spell.language = "es_ES"

# Configuración de compilación automática
auto.compile = false
auto.preview = true
cleanup.auxiliary = true

# Archivos a ignorar en control de versiones
ignore.files = [
    "*.aux",
    "*.log",
    "*.bbl",
    "*.blg",
    "*.toc",
    "*.lot",
    "*.lof",
    "*.out",
    "*.fls",
    "*.fdb_latexmk",
    "*.synctex.gz",
    "*.backup",
    "*.tmp"
]
