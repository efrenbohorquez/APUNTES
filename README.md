# Tesis de Maestría en Analítica de Datos

Una plantilla completa y profesional en LaTeX para desarrollar tu tesis de maestría en Analítica de Datos.

## 📋 Descripción

Este proyecto proporciona una estructura completa y modular para la redacción de una tesis de maestría en Analítica de Datos. Incluye todos los elementos necesarios: portada, capítulos, bibliografía, apéndices y configuraciones de compilación.

## 🏗️ Estructura del Proyecto

```
latex-project/
├── tesis_maestria.tex          # Documento principal
├── compile.ps1                 # Script de compilación (Windows)
├── Makefile                   # Makefile para compilación
├── .latexmkrc                 # Configuración LaTeX
├── README.md                  # Este archivo
├── portada/                   # Elementos preliminares
│   ├── portada.tex           # Página de título
│   ├── derechos.tex          # Página de derechos
│   ├── dedicatoria.tex       # Dedicatoria
│   ├── agradecimientos.tex   # Agradecimientos
│   ├── resumen.tex           # Resumen en español
│   └── abstract.tex          # Abstract en inglés
├── capitulos/                 # Capítulos de la tesis
│   ├── 01_introduccion.tex   # Introducción
│   ├── 02_marco_teorico.tex  # Marco teórico
│   ├── 03_estado_del_arte.tex # Estado del arte
│   ├── 04_metodologia.tex    # Metodología
│   ├── 05_desarrollo.tex     # Desarrollo
│   ├── 06_resultados.tex     # Resultados
│   └── 07_conclusiones.tex   # Conclusiones
├── bibliografia/              # Referencias bibliográficas
│   └── referencias.bib       # Archivo BibTeX
├── apendices/                # Apéndices
│   ├── apendice_a.tex       # Código fuente
│   └── apendice_b.tex       # Datos y resultados
└── imagenes/                 # Imágenes y figuras
    └── (tus imágenes aquí)
```

## 🚀 Inicio Rápido

### Prerrequisitos

1. **Distribución LaTeX** (una de las siguientes):
   - **Windows**: [MiKTeX](https://miktex.org/) o [TeX Live](https://www.tug.org/texlive/)
   - **macOS**: [MacTeX](https://www.tug.org/mactex/)
   - **Linux**: TeX Live (`sudo apt-get install texlive-full`)

2. **Editor LaTeX** (recomendado):
   - [TeXstudio](https://www.texstudio.org/)
   - [VS Code](https://code.visualstudio.com/) con extensión LaTeX Workshop
   - [Overleaf](https://www.overleaf.com/) (online)

### Compilación

#### Opción 1: Script de PowerShell (Windows)
```powershell
# Compilación completa
.\compile.ps1

# Compilación rápida (sin bibliografía)
.\compile.ps1 -quick

# Limpiar archivos temporales
.\compile.ps1 -clean

# Compilar y abrir PDF
.\compile.ps1 -view
```

#### Opción 2: Makefile (Linux/macOS/Windows con make)
```bash
# Compilación completa
make pdf

# Compilación rápida
make quick

# Limpiar archivos temporales
make clean

# Compilar y abrir PDF
make view
```

#### Opción 3: Comandos manuales
```bash
# Compilación completa con bibliografía
pdflatex tesis_maestria.tex
bibtex tesis_maestria
pdflatex tesis_maestria.tex
pdflatex tesis_maestria.tex
```

## 📝 Personalización

### 1. Información Básica
Edita `tesis_maestria.tex` para actualizar:
- Título de la tesis
- Tu nombre
- Nombre del director/asesor
- Universidad
- Fecha

### 2. Portada y Preliminares
Personaliza los archivos en `portada/`:
- `portada.tex`: Título, autor, universidad
- `dedicatoria.tex`: Tu dedicatoria personal
- `agradecimientos.tex`: Agradecimientos
- `resumen.tex`: Resumen en español
- `abstract.tex`: Abstract en inglés

### 3. Contenido de Capítulos
Cada archivo en `capitulos/` contiene:
- Estructura base con secciones y subsecciones
- Ejemplos de tablas, figuras y código
- Comentarios explicativos para guiar el desarrollo

### 4. Bibliografía
Edita `bibliografia/referencias.bib`:
- Incluye tus referencias en formato BibTeX
- Usa herramientas como [Google Scholar](https://scholar.google.com/), [Zotero](https://www.zotero.org/) o [Mendeley](https://www.mendeley.com/) para generar referencias automáticamente

### 5. Imágenes
- Coloca tus imágenes en la carpeta `imagenes/`
- Formatos recomendados: PDF, PNG, JPG
- Referencia las imágenes en los capítulos usando `\includegraphics`

## 🎯 Características Principales

### ✅ Estructura Completa
- Portada profesional con logos universitarios
- Páginas preliminares (dedicatoria, agradecimientos, resúmenes)
- 7 capítulos estructurados para analítica de datos
- Bibliografía en formato académico
- Apéndices para código y datos complementarios

### ✅ Configuración Profesional
- Formato A4 con márgenes apropiados
- Tipografía Times New Roman
- Interlineado 1.5 para lectura cómoda
- Numeración automática de páginas, figuras y tablas
- Enlaces internos y externos automáticos

### ✅ Elementos Especializados
- Bloques de código con sintaxis resaltada
- Tablas y figuras profesionales
- Algoritmos y pseudocódigo
- Ecuaciones matemáticas
- Referencias cruzadas automáticas

### ✅ Herramientas de Desarrollo
- Scripts de compilación automatizada
- Configuración para editores populares
- Limpieza automática de archivos temporales
- Detección de errores de compilación

## 📚 Guía de Contenido por Capítulo

### Capítulo 1: Introducción
- Planteamiento del problema
- Objetivos (general y específicos)
- Hipótesis de investigación
- Justificación y motivación
- Alcance y limitaciones
- Contribuciones esperadas

### Capítulo 2: Marco Teórico
- Fundamentos de analítica de datos
- Machine learning y algoritmos
- Big data y tecnologías
- Métodos estadísticos
- Herramientas y plataformas

### Capítulo 3: Estado del Arte
- Revisión de literatura
- Trabajos relacionados
- Análisis comparativo
- Identificación de brechas
- Posicionamiento de la investigación

### Capítulo 4: Metodología
- Diseño de la investigación
- Metodología CRISP-DM
- Preprocesamiento de datos
- Selección de algoritmos
- Métricas de evaluación
- Validación experimental

### Capítulo 5: Desarrollo
- Implementación del sistema
- Arquitectura de la solución
- Pipelines de datos
- Desarrollo de modelos
- Optimizaciones realizadas

### Capítulo 6: Resultados
- Análisis de datos
- Resultados experimentales
- Evaluación de modelos
- Comparación con benchmarks
- Validación de hipótesis

### Capítulo 7: Conclusiones
- Síntesis de resultados
- Cumplimiento de objetivos
- Contribuciones realizadas
- Limitaciones encontradas
- Trabajo futuro

## 🔧 Solución de Problemas

### Error: "Command not found"
- **Windows**: Asegúrate de que MiKTeX o TeX Live esté instalado y en el PATH
- **Linux/macOS**: Instala TeX Live completo

### Error de compilación de bibliografía
- Verifica que `referencias.bib` tenga sintaxis BibTeX correcta
- Asegúrate de citar las referencias en el texto con `\cite{}`

### Imágenes no aparecen
- Verifica que las imágenes estén en la carpeta `imagenes/`
- Usa rutas relativas: `\includegraphics{imagenes/mi_imagen.png}`
- Asegúrate de que el formato de imagen sea compatible (PDF, PNG, JPG)

### Problemas de encoding
- Guarda todos los archivos .tex en codificación UTF-8
- Verifica que tu editor esté configurado para UTF-8

## 📖 Recursos Adicionales

### Documentación LaTeX
- [LaTeX Wikibook](https://en.wikibooks.org/wiki/LaTeX)
- [Overleaf Documentation](https://www.overleaf.com/learn)
- [LaTeX Cheat Sheet](https://wch.github.io/latexsheet/)

### Herramientas Bibliográficas
- [Google Scholar](https://scholar.google.com/)
- [Zotero](https://www.zotero.org/)
- [Mendeley](https://www.mendeley.com/)
- [JabRef](https://www.jabref.org/)

### Recursos de Analítica de Datos
- [Kaggle](https://www.kaggle.com/)
- [Papers With Code](https://paperswithcode.com/)
- [arXiv](https://arxiv.org/)
- [Google AI Publications](https://ai.google/research/pubs/)

## 🤝 Contribuciones

Este proyecto es una plantilla base que puedes personalizar según tus necesidades específicas. Si encuentras errores o tienes sugerencias de mejora, ¡son bienvenidas!

## 📄 Licencia

Esta plantilla está disponible para uso académico libre. Puedes usarla, modificarla y distribuirla para propósitos educativos.

## 🎓 Créditos

Plantilla desarrollada específicamente para tesis de maestría en Analítica de Datos, siguiendo las mejores prácticas académicas y los estándares internacionales de documentación científica.

---

**¡Éxito en tu tesis de maestría!** 🚀

Para más información sobre analítica de datos y desarrollo de tesis, consulta los recursos adicionales incluidos en los capítulos y apéndices de esta plantilla.
