@echo off
echo 🏎️ RescueRoad - Public Link Generator
echo -----------------------------------
echo This will upload your project and give you a public URL.
echo.
echo NOTE: If this is your first time, it will ask for an 
echo EMAIL and PASSWORD to create your account.
echo -----------------------------------
pause

:: Check for Node.js
node -v >nul 2>&1
if %errorlevel% neq 0 (
    echo [ERROR] Node.js is required to generate a link.
    echo Please install it from https://nodejs.org/
    pause
    exit
)

echo.
echo Launching Deployment...
npx surge .
echo.
echo -----------------------------------
echo Done! Your link is listed above.
pause
