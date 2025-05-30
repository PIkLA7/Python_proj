chcp 65001 > nul
@echo off
echo Установка виртуального окружения...
python -m venv venv

echo Активация виртуального окружения...
call venv\Scripts\activate.bat

echo Установка зависимостей...
pip install -r requirements.txt

echo Запуск приложения...
set FLASK_APP=app.py
set FLASK_ENV=development
flask run

pause