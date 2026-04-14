@echo off
echo 🚀 MERN Employee App - Manual Deployment Preparation
echo ====================================================
echo.

echo Checking project structure...
if not exist "frontend\package.json" (
    echo ❌ Error: Not in correct project directory.
    echo Please run this from the mern-app-emps folder.
    pause
    exit /b 1
)
echo ✅ Project structure OK.

echo.
echo Your app is ready for manual deployment to Vercel!
echo.
echo 📋 MANUAL DEPLOYMENT STEPS:
echo ===========================
echo.
echo 1. Go to https://vercel.com and create account
echo.
echo 2. Click "New Project"
echo.
echo 3. Choose "Deploy" tab (drag and drop method)
echo.
echo 4. DRAG AND DROP the ENTIRE "frontend" folder into Vercel
echo.
echo 5. Configure settings:
echo    - Framework Preset: Vite
echo    - Root Directory: . (leave as is)
echo    - Build Command: npm run build
echo    - Output Directory: dist
echo.
echo 6. After project creates, go to Settings → Environment Variables:
echo    - Name: MONGODB_URI
echo    - Value: Your MongoDB Atlas connection string
echo    - Environment: Production
echo.
echo 7. Click "Deploy"
echo.
echo 🎉 Your app will be live!
echo.
echo 📝 MONGODB ATLAS SETUP:
echo =======================
echo 1. Go to https://www.mongodb.com/atlas
echo 2. Create FREE cluster
echo 3. Create database user
echo 4. Allow access from anywhere (0.0.0.0/0)
echo 5. Get connection string
echo 6. Use as MONGODB_URI value
echo.
echo 📂 Your frontend folder contains:
dir frontend /b
echo.
echo ✅ Ready to deploy! Just drag the frontend folder to Vercel.
echo.
pause