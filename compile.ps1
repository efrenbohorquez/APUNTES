# ===============================================
# CONFIGURACIÓN DE COMPILACIÓN PARA TESIS
# ===============================================

# Script de PowerShell para compilar la tesis en Windows
# Uso: .\compile.ps1
#      .\compile.ps1 -quick
#      .\compile.ps1 -clean

param(
    [switch]$quick,
    [switch]$clean,
    [switch]$view,
    [switch]$help
)

$MainFile = "tesis_maestria"
$Latex = "pdflatex"
$Bibtex = "bibtex"

function Show-Help {
    Write-Host "Script de Compilación para Tesis de Maestría" -ForegroundColor Green
    Write-Host ""
    Write-Host "Uso:"
    Write-Host "  .\compile.ps1           - Compilación completa con bibliografía"
    Write-Host "  .\compile.ps1 -quick    - Compilación rápida sin bibliografía"
    Write-Host "  .\compile.ps1 -clean    - Limpiar archivos temporales"
    Write-Host "  .\compile.ps1 -view     - Compilar y abrir PDF"
    Write-Host "  .\compile.ps1 -help     - Mostrar esta ayuda"
    Write-Host ""
}

function Clean-Files {
    Write-Host "Limpiando archivos temporales..." -ForegroundColor Yellow
    
    $extensions = @("*.aux", "*.log", "*.bbl", "*.blg", "*.toc", "*.lot", "*.lof", "*.out", "*.fls", "*.fdb_latexmk", "*.synctex.gz")
    
    foreach ($ext in $extensions) {
        $files = Get-ChildItem -Path . -Name $ext -ErrorAction SilentlyContinue
        if ($files) {
            Remove-Item $ext -Force
            Write-Host "  Eliminados: $ext" -ForegroundColor Gray
        }
    }
    
    Write-Host "¡Limpieza completada!" -ForegroundColor Green
}

function Compile-Quick {
    Write-Host "Iniciando compilación rápida..." -ForegroundColor Blue
    
    & $Latex "$MainFile.tex"
    
    if ($LASTEXITCODE -eq 0) {
        Write-Host "¡Compilación rápida completada exitosamente!" -ForegroundColor Green
    } else {
        Write-Host "Error en la compilación rápida" -ForegroundColor Red
        exit 1
    }
}

function Compile-Full {
    Write-Host "Iniciando compilación completa con bibliografía..." -ForegroundColor Blue
    
    Write-Host "  Paso 1/4: Primera compilación LaTeX..." -ForegroundColor Gray
    & $Latex "$MainFile.tex"
    if ($LASTEXITCODE -ne 0) {
        Write-Host "Error en primera compilación LaTeX" -ForegroundColor Red
        exit 1
    }
    
    Write-Host "  Paso 2/4: Procesando bibliografía..." -ForegroundColor Gray
    & $Bibtex $MainFile
    if ($LASTEXITCODE -ne 0) {
        Write-Host "Error en procesamiento de bibliografía" -ForegroundColor Red
        exit 1
    }
    
    Write-Host "  Paso 3/4: Segunda compilación LaTeX..." -ForegroundColor Gray
    & $Latex "$MainFile.tex"
    if ($LASTEXITCODE -ne 0) {
        Write-Host "Error en segunda compilación LaTeX" -ForegroundColor Red
        exit 1
    }
    
    Write-Host "  Paso 4/4: Compilación final..." -ForegroundColor Gray
    & $Latex "$MainFile.tex"
    if ($LASTEXITCODE -ne 0) {
        Write-Host "Error en compilación final" -ForegroundColor Red
        exit 1
    }
    
    Write-Host "¡Compilación completa exitosa! Archivo generado: $MainFile.pdf" -ForegroundColor Green
}

function Open-PDF {
    if (Test-Path "$MainFile.pdf") {
        Write-Host "Abriendo PDF..." -ForegroundColor Blue
        Start-Process "$MainFile.pdf"
    } else {
        Write-Host "El archivo PDF no existe. Ejecutando compilación primero..." -ForegroundColor Yellow
        Compile-Full
        if (Test-Path "$MainFile.pdf") {
            Start-Process "$MainFile.pdf"
        }
    }
}

# Verificar que LaTeX esté disponible
if (-not (Get-Command $Latex -ErrorAction SilentlyContinue)) {
    Write-Host "Error: $Latex no está disponible en el PATH" -ForegroundColor Red
    Write-Host "Por favor, instala una distribución de LaTeX como MiKTeX o TeX Live" -ForegroundColor Yellow
    exit 1
}

# Procesar argumentos
if ($help) {
    Show-Help
    exit 0
}

if ($clean) {
    Clean-Files
    exit 0
}

if ($view) {
    Open-PDF
    exit 0
}

if ($quick) {
    Compile-Quick
} else {
    Compile-Full
}

Write-Host ""
Write-Host "Proceso completado. Para ver el PDF, usa: .\compile.ps1 -view" -ForegroundColor Cyan
