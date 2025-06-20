# Directorio de Imágenes

Este directorio contiene todas las imágenes, gráficos y figuras utilizadas en la tesis.

## Organización Recomendada

```
imagenes/
├── capitulo01/          # Imágenes del capítulo 1
├── capitulo02/          # Imágenes del capítulo 2
├── capitulo03/          # Imágenes del capítulo 3
├── capitulo04/          # Imágenes del capítulo 4
├── capitulo05/          # Imágenes del capítulo 5
├── capitulo06/          # Imágenes del capítulo 6
├── capitulo07/          # Imágenes del capítulo 7
├── logos/               # Logos institucionales
├── diagramas/           # Diagramas de flujo y arquitectura
├── graficos/            # Gráficos y visualizaciones
└── resultados/          # Gráficos de resultados y métricas
```

## Formatos Recomendados

### Para Figuras y Diagramas
- **PDF**: Ideal para gráficos vectoriales, diagramas, esquemas
- **PNG**: Para capturas de pantalla, imágenes con transparencia
- **JPG**: Para fotografías y imágenes complejas

### Para Gráficos de Datos
- **PDF**: Gráficos generados por matplotlib, ggplot, etc.
- **SVG**: Convertir a PDF para mejor calidad en LaTeX

## Nomenclatura de Archivos

Usa nombres descriptivos y consistentes:

```
fig_01_arquitectura_sistema.pdf
graf_01_distribucion_datos.png
diag_01_flujo_metodologia.pdf
resultado_01_accuracy_modelos.pdf
logo_universidad.png
```

## Cómo Referenciar Imágenes en LaTeX

### Imagen Simple
```latex
\begin{figure}[htbp]
    \centering
    \includegraphics[width=0.8\textwidth]{imagenes/fig_01_arquitectura.pdf}
    \caption{Arquitectura del sistema propuesto}
    \label{fig:arquitectura}
\end{figure}
```

### Múltiples Imágenes
```latex
\begin{figure}[htbp]
    \centering
    \begin{subfigure}[b]{0.48\textwidth}
        \includegraphics[width=\textwidth]{imagenes/graf_01_antes.png}
        \caption{Antes del preprocesamiento}
        \label{fig:antes}
    \end{subfigure}
    \hfill
    \begin{subfigure}[b]{0.48\textwidth}
        \includegraphics[width=\textwidth]{imagenes/graf_02_despues.png}
        \caption{Después del preprocesamiento}
        \label{fig:despues}
    \end{subfigure}
    \caption{Comparación de datos antes y después del preprocesamiento}
    \label{fig:comparacion}
\end{figure}
```

## Herramientas Recomendadas

### Para Crear Diagramas
- **Draw.io**: Diagramas de flujo, arquitectura
- **Lucidchart**: Diagramas profesionales
- **TikZ/LaTeX**: Diagramas directamente en LaTeX
- **Microsoft Visio**: Diagramas técnicos

### Para Gráficos de Datos
- **Python**: matplotlib, seaborn, plotly
- **R**: ggplot2, lattice
- **Tableau**: Visualizaciones interactivas
- **Excel**: Gráficos básicos

### Para Edición de Imágenes
- **GIMP**: Editor gratuito
- **Adobe Photoshop**: Editor profesional
- **Inkscape**: Gráficos vectoriales

## Optimización de Imágenes

### Tamaño de Archivo
- Comprime imágenes PNG/JPG antes de incluirlas
- Usa PDF para gráficos vectoriales (mejor calidad, menor tamaño)
- Evita resoluciones excesivamente altas (300 DPI es suficiente para impresión)

### Calidad
- Asegúrate de que el texto en las imágenes sea legible
- Usa colores que contrasten bien
- Mantén consistencia en estilos y fuentes

## Lista de Verificación

- [ ] Todas las imágenes tienen nombres descriptivos
- [ ] Las imágenes están organizadas por capítulo
- [ ] Se incluyen tanto versiones en color como en escala de grises (si es necesario)
- [ ] Todas las figuras tienen caption y label
- [ ] Las referencias a figuras usan `\ref{fig:nombre}` en el texto
- [ ] Los archivos están en formato apropiado (PDF para vectoriales, PNG/JPG para bitmap)
- [ ] Las imágenes son de calidad suficiente para impresión

## Ejemplo de Estructura

```
imagenes/
├── capitulo01/
│   └── fig_01_planteamiento_problema.pdf
├── capitulo02/
│   ├── fig_02_taxonomia_ml.pdf
│   └── fig_03_big_data_vs.png
├── capitulo04/
│   ├── diag_04_metodologia_crisp.pdf
│   └── fig_04_pipeline_datos.pdf
├── capitulo06/
│   ├── graf_06_accuracy_modelos.pdf
│   ├── graf_06_confusion_matrix.png
│   └── graf_06_feature_importance.pdf
└── logos/
    ├── logo_universidad.png
    └── logo_facultad.pdf
```

Recuerda: Las imágenes son fundamentales para comunicar efectivamente tus ideas. ¡Invierte tiempo en crear visualizaciones claras y profesionales!
