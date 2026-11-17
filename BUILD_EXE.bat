@echo off
cd /d "%~dp0"
py -3 -m pip install -r requirements.txt
if errorlevel 1 (echo Failed to install dependencies & pause & exit /b 1)
py -3 -m PyInstaller --noconfirm --clean --onefile --windowed --name RiskLotPro --collect-all MetaTrader5 app\main.py
if errorlevel 1 (echo EXE build failed & pause & exit /b 1)
echo Built dist\RiskLotPro.exe
pause
