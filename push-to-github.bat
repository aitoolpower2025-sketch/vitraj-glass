@echo off
echo ========================================
echo   Push to GitHub - Vitraj Glass
echo ========================================
echo.

echo Adding all files...
git add -A

echo Committing...
git commit -m "Vitraj Glass - modern website"

echo.
echo To push to GitHub:
echo 1. Create a new repository at https://github.com/new
echo 2. Run these commands:
echo    git remote add origin https://github.com/YOUR_USERNAME/vitraj-glass.git
echo    git push -u origin main
echo.
echo Or paste your repository URL below:
set /p REPO_URL=Repository URL: 

if not "%REPO_URL%"=="" (
    git remote add origin %REPO_URL%
    git push -u origin main
    echo.
    echo Done! 
) else (
    echo No URL provided.
)

pause