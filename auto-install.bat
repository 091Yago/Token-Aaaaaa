@echo off
cls
color 0A
title DemonZ - Auto Install Dependencies

echo ================================================
echo    DemonZ - Automatic Dependency Installer
echo ================================================
echo.
echo Installing required packages...
echo.

python -m pip install --upgrade pip
python -m pip install -r requirements.txt

if %ERRORLEVEL% EQU 0 (
    echo.
    echo ================================================
    echo    All dependencies installed successfully!
    echo ================================================
    echo.
    echo You can now run DemonZ using:
    echo   - run.bat
    echo   - build.bat
    echo   - python DemonZ.py
    echo.
) else (
    echo.
    echo ================================================
    echo    ERROR: Installation failed!
    echo ================================================
    echo.
    echo Please check your internet connection and try again.
    echo.
)

pause
