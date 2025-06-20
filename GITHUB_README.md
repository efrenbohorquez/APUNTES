# Tesis de Maestría en Analítica de Datos - Plantilla LaTeX

[![LaTeX](https://img.shields.io/badge/LaTeX-008080?style=for-the-badge&logo=latex&logoColor=white)](https://www.latex-project.org/)
[![License](https://img.shields.io/badge/License-Academic-blue.svg)](LICENSE)
[![Status](https://img.shields.io/badge/Status-Template%20Ready-green.svg)](PROJECT_STATUS.txt)

> **Plantilla completa y profesional en LaTeX para el desarrollo de tesis de maestría en Analítica de Datos**

## 🎓 Descripción

Esta es una plantilla integral desarrollada específicamente para estudiantes de maestría en **Analítica de Datos** que necesitan crear una tesis académica profesional. Incluye estructura completa, configuración automatizada, y ejemplos específicos del campo.

## ✨ Características Principales

- 📚 **Estructura Completa**: 7 capítulos diseñados específicamente para analítica de datos
- 🔧 **Compilación Automatizada**: Scripts para Windows (PowerShell) y Linux/macOS (Makefile)
- 💻 **Configuración VS Code**: Integración completa con LaTeX Workshop
- 📊 **Ejemplos Especializados**: Código, algoritmos, tablas y figuras para analítica de datos
- 📖 **Bibliografía**: Referencias clave del campo incluidas
- 🎨 **Formato Profesional**: Cumple estándares académicos internacionales

## 🚀 Inicio Rápido

### Prerrequisitos
- **LaTeX**: [MiKTeX](https://miktex.org/) (Windows) o [TeX Live](https://www.tug.org/texlive/) (Linux/macOS)
- **Editor**: [VS Code](https://code.visualstudio.com/) (recomendado) o cualquier editor LaTeX

### Instalación

1. **Clonar el repositorio:**
   ```bash
   git clone https://github.com/efrenbohorquez/APUNTES.git
   cd APUNTES/latex-project
   ```

2. **Compilar la tesis:**
   ```powershell
   # En Windows
   .\compile.ps1
   
   # En Linux/macOS
   make pdf
   ```

3. **Abrir en VS Code:**
   - Instalar extensiones recomendadas (se instalan automáticamente)
   - Abrir `tesis_maestria.tex`
   - Usar `Ctrl+Shift+P` → "Tasks: Run Task" → "Compilar Tesis Completa"

## 📁 Estructura del Proyecto

```
latex-project/
├── 📄 tesis_maestria.tex          # Documento principal
├── ⚡ compile.ps1                 # Compilación automática (Windows)
├── 🔧 Makefile                   # Compilación automática (Linux/macOS)
├── 📖 README.md                  # Documentación
├── 📝 PROJECT_STATUS.txt         # Estado del proyecto
├── 🚫 .gitignore                 # Control de versiones
│
├── 📂 portada/                   # Páginas preliminares
│   ├── portada.tex              # Página de título
│   ├── derechos.tex             # Derechos de autor
│   ├── dedicatoria.tex          # Dedicatoria
│   ├── agradecimientos.tex      # Agradecimientos
│   ├── resumen.tex              # Resumen en español
│   └── abstract.tex             # Abstract en inglés
│
├── 📂 capitulos/                 # Capítulos de la tesis
│   ├── 01_introduccion.tex      # Introducción y objetivos
│   ├── 02_marco_teorico.tex     # Fundamentos teóricos
│   ├── 03_estado_del_arte.tex   # Revisión de literatura
│   ├── 04_metodologia.tex       # Metodología CRISP-DM
│   ├── 05_desarrollo.tex        # Implementación
│   ├── 06_resultados.tex        # Resultados y análisis
│   └── 07_conclusiones.tex      # Conclusiones y trabajo futuro
│
├── 📂 bibliografia/              # Referencias
│   └── referencias.bib          # Archivo BibTeX con referencias clave
│
├── 📂 apendices/                # Material complementario
│   ├── apendice_a.tex          # Código fuente y scripts
│   └── apendice_b.tex          # Datos y configuraciones
│
├── 📂 imagenes/                 # Imágenes y figuras
│   └── README.md               # Guía de organización de imágenes
│
└── 📂 .vscode/                  # Configuración VS Code
    ├── settings.json           # Configuración del editor
    ├── tasks.json             # Tareas de compilación
    └── extensions.json         # Extensiones recomendadas
```

## 🎯 Contenido Especializado

### Capítulos Incluidos

1. **Introducción**: Planteamiento del problema, objetivos, hipótesis
2. **Marco Teórico**: Machine Learning, Big Data, metodologías
3. **Estado del Arte**: Revisión de literatura y benchmarking
4. **Metodología**: CRISP-DM, preprocesamiento, validación
5. **Desarrollo**: Implementación, pipelines, arquitectura
6. **Resultados**: Análisis, métricas, comparaciones
7. **Conclusiones**: Síntesis, contribuciones, trabajo futuro

### Elementos Técnicos

- 🐍 **Código Python**: Ejemplos de análisis de datos y ML
- 📊 **Visualizaciones**: Plantillas para gráficos y tablas
- 🔄 **Algoritmos**: Pseudocódigo y diagramas de flujo
- 📈 **Métricas**: Evaluación de modelos y resultados
- 🗃️ **Datasets**: Referencias a conjuntos de datos relevantes

## 🛠️ Herramientas de Desarrollo

### Scripts de Compilación

```powershell
# Windows PowerShell
.\compile.ps1              # Compilación completa
.\compile.ps1 -quick       # Compilación rápida
.\compile.ps1 -clean       # Limpiar archivos temporales
.\compile.ps1 -view        # Compilar y abrir PDF
```

```bash
# Linux/macOS
make pdf                   # Compilación completa
make quick                 # Compilación rápida
make clean                 # Limpiar archivos temporales
make view                  # Compilar y abrir PDF
```

### Tareas de VS Code

- **Compilar Tesis Completa**: `Ctrl+Shift+P` → Tasks → Compilar Tesis Completa
- **Compilación Rápida**: Para pruebas sin bibliografía
- **Limpiar Archivos**: Elimina archivos temporales de LaTeX

## 📚 Recursos Incluidos

### Bibliografía Especializada
- Referencias clave en Machine Learning
- Artículos fundamentales de Big Data
- Metodologías de analítica de datos
- Herramientas y frameworks actuales

### Ejemplos de Código
- Pipeline completo de datos
- Scripts de entrenamiento de modelos
- Evaluación y validación
- Configuraciones YAML

## 🔧 Personalización

### 1. Información Básica
Edita `tesis_maestria.tex`:
```latex
\title{Tu Título de Tesis Aquí}
\author{Tu Nombre}
\director{Nombre del Director}
\universidad{Tu Universidad}
```

### 2. Contenido Específico
- Actualiza cada capítulo con tu investigación
- Agrega tus referencias en `referencias.bib`
- Incluye tus imágenes en `imagenes/`
- Personaliza apéndices con tu código

## 🤝 Contribuciones

Este proyecto es una plantilla académica. Si encuentras mejoras o errores:

1. Fork el repositorio
2. Crea una rama para tu mejora
3. Envía un Pull Request

## 📄 Licencia

Esta plantilla está disponible para uso académico libre. Úsala, modifícala y distribúyela para propósitos educativos.

## 🎓 Sobre la Plantilla

Desarrollada específicamente para tesis de maestría en **Analítica de Datos**, siguiendo:
- Estándares académicos internacionales
- Mejores prácticas de LaTeX
- Metodologías específicas del campo
- Estructura modular y escalable

## 📞 Soporte

Para preguntas sobre la plantilla:
- Revisa la documentación completa en `README.md`
- Consulta el estado del proyecto en `PROJECT_STATUS.txt`
- Abre un issue en GitHub para reportar problemas

---

**¡Éxito en tu tesis de maestría!** 🚀

*Desarrollado con ❤️ para la comunidad académica de Analítica de Datos*
