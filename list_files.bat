@echo off
setlocal enabledelayedexpansion

set "SOURCE_DIR=C:\Users\stefa\OneDrive\Desktop\anymod backup vom usb Stick\AnyMod Ausstieg im August-2025\ralfFreund_"
set "OUTPUT_FILE=%~dp0file_list.txt"

echo Erstelle Dateiliste...
echo Quelle: %SOURCE_DIR%
echo Ziel: %OUTPUT_FILE%
echo.

(
    echo Dateiliste erstellt am %date% um %time%
    echo Quellverzeichnis: %SOURCE_DIR%
    echo.
    echo ====================================
    echo.
) > "%OUTPUT_FILE%"

dir "%SOURCE_DIR%" /s /b /a-d >> "%OUTPUT_FILE%"

echo.
echo Fertig! Die Dateiliste wurde gespeichert in:
echo %OUTPUT_FILE%
echo.
pause
