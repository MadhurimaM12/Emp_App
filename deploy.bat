@echo off
echo 🚀 MERN Employee App - Vercel Deployment Script
echo ================================================
echo.

echo Step 1: Checking if Git is installed...
git --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ Git is not installed. Please install Git first.
    echo Download from: https://git-scm.com/downloads
    pause
    exit /b 1
)
echo ✅ Git is installed.

echo.
echo Step 2: Checking current directory...
if not exist "frontend\package.json" (
    echo ❌ Not in the correct project directory.
    echo Please run this script from the project root (mern-app-emps folder).
    pause
    exit /b 1
)
echo ✅ In correct project directory.

echo.
echo Step 3: Checking if this is a Git repository...
if not exist ".git" (
    echo Initializing Git repository...
    git init
    echo ✅ Git repository initialized.
) else (
    echo ✅ Already a Git repository.
)

echo.
echo Step 4: Adding files to Git...
git add .
echo ✅ Files added to Git.

echo.
echo Step 5: Committing changes...
git commit -m "Deploy MERN Employee App to Vercel" 2>nul
if %errorlevel% neq 0 (
    echo ⚠️  No changes to commit or commit failed. Continuing...
) else (
    echo ✅ Changes committed.
)

echo.
echo 📋 MANUAL STEPS REQUIRED:
echo =========================
echo.
echo 1. Create a GitHub repository:
echo    • Go to https://github.com
echo    • Click "New repository"
echo    • Name it: ATP_24EG105K62 (or your preferred name)
echo    • Don't initialize with README
echo    • Click "Create repository"
echo.
echo 2. Push to GitHub:
echo    • Copy the commands below and run them:
echo.
echo    git branch -M main
echo    git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO_NAME.git
echo    git push -u origin main
echo.
echo 3. Deploy on Vercel:
echo    • Go to https://vercel.com
echo    • Click "New Project"
echo    • Import your GitHub repository
echo    • Configure:
echo      - Framework Preset: Vite
echo      - Root Directory: frontend
echo      - Build Command: npm run build
echo      - Output Directory: dist
echo.
echo 4. Set Environment Variable:
echo    • In Vercel dashboard → Project Settings → Environment Variables
echo    • Name: MONGODB_URI
echo    • Value: Your MongoDB Atlas connection string
echo    • Environment: Production
echo.
echo 5. Deploy!
echo.
echo 🎉 Your app will be live at: https://your-app-name.vercel.app
echo.
pause