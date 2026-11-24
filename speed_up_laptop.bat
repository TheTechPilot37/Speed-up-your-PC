@echo off
title Speed Up My Laptop
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Please right-click this file and choose "Run as administrator".
    pause
    exit /b
)

echo.
echo [1/5] Deleting temporary files...
del /q /f /s "%TEMP%\*" >nul 2>&1
for /d %%x in ("%TEMP%\*") do rd /s /q "%%x" >nul 2>&1
del /q /f /s "C:\Windows\Temp\*" >nul 2>&1
for /d %%x in ("C:\Windows\Temp\*") do rd /s /q "%%x" >nul 2>&1

echo [2/5] Clearing old Windows Update download files...
net stop wuauserv >nul 2>&1
del /q /f /s "C:\Windows\SoftwareDistribution\Download\*" >nul 2>&1
net start wuauserv >nul 2>&1

echo [3/5] Emptying the Recycle Bin...
powershell -NoProfile -Command "Clear-RecycleBin -Force -ErrorAction SilentlyContinue"

echo [4/5] Flushing DNS cache...
ipconfig /flushdns >nul

echo [5/5] Checking Windows system files (this can take 10-20 minutes)...
sfc /scannow

echo.
echo Done! Please restart your laptop now.
pause
