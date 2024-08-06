@echo off
setlocal

cd /d %~dp0

py --version
if errorlevel 1 (
    echo py not found
    pause
    exit /b 1
)

py -m pip install -r requirements.txt
if errorlevel 1 (
    echo Failed to install requirements
    pause
    exit /b 1
)
cls

py main.py
if errorlevel 1 (
    echo Failed to run main
    pause
    exit /b 1
)

pause
exit /b 0
