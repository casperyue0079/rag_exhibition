@echo off
chdir /d "%~dp0server"
if not exist "venv\Scripts\activate.bat" (
  echo [run.bat] 未检测到 venv，请先执行:
  echo   cd server
  echo   python -m venv venv
  echo   venv\Scripts\activate
  echo   pip install -r requirements.txt
  exit /b 1
)
call venv\Scripts\activate.bat
echo 启动服务: http://127.0.0.1:8080
uvicorn main:app --host 127.0.0.1 --port 8080
