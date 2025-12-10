@echo off
echo ========================================
echo   Gestune - Hand Gesture Music Controller
echo ========================================
echo.

REM Check if venv exists
if not exist "venv\Scripts\activate.bat" (
    echo [ERROR] Virtual environment not found!
    echo Please create venv first: python -m venv venv
    echo Then install requirements: venv\Scripts\pip install -r requirements.txt
    echo.
    pause
    exit /b 1
)

REM Activate virtual environment and run main.py
echo Activating virtual environment...
call venv\Scripts\activate.bat

echo.
echo Running main.py...
python main.py

REM Deactivate venv
call venv\Scripts\deactivate.bat

echo.
echo ========================================
echo Application closed.
echo ========================================
pause
