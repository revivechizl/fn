@echo off
echo ===============================
echo   REVIVECHIZL SITE UPLOADER
echo ===============================
echo.

:: Ask for repo URL
set /p repoUrl=Paste your GitHub repo URL here: 

echo.
echo Initializing fresh git repo...

:: Remove old git if exists
if exist .git (
    echo Removing old git history...
    rmdir /s /q .git
)

:: Init repo
git init

:: Add files
git add .

:: Commit
git commit -m "Initial upload - REVIVECHIZL site"

:: Set branch
git branch -M main

:: Add remote
git remote add origin %repoUrl%

:: Push
git push -u origin main

echo.
echo ===============================
echo   DONE! SITE UPLOADED
echo ===============================
pause