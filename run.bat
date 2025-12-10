@echo off
echo ========================================
echo   Gestune - Hand Gesture Music Controller
echo ========================================
echo.
echo Starting application with uv...
echo.

REM Check if uv is installed
where uv >nul 2>&1
if %errorlevel% neq 0 (
    echo [ERROR] uv is not installed!
    echo Please install uv first: https://github.com/astral-sh/uv
    echo.
    pause
    exit /b 1
)

REM Run main.py using uv
echo Running main.py...
uv run main.py

echo.
echo ========================================
echo Application closed.
echo ========================================
pause
