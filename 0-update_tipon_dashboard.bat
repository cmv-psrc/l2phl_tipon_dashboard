@echo off

cd /d "%~dp0"

git pull origin main --allow-unrelated-histories
quarto render
git add .

git commit -m "Site update %DATE% %TIME%"

git push origin main

pause