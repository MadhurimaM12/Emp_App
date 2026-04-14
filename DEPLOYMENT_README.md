# 🚀 MERN Employee App - Deployment Guide

## ✅ Your App is Ready for Deployment!

All necessary changes have been made to convert your MERN app for Vercel deployment.

## 📋 Complete Deployment Steps

### Step 1: Run the Deployment Script
Double-click `deploy.bat` in your project root folder to prepare your code.

### Step 2: Create GitHub Repository
1. Go to [github.com](https://github.com)
2. Click **"New repository"**
3. Name: `ATP_24EG105K62` (or your preferred name)
4. **Don't** check "Add a README file"
5. Click **"Create repository"**

### Step 3: Push to GitHub
Run these commands in your project folder:
```bash
git branch -M main
git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO_NAME.git
git push -u origin main
```

### Step 4: Deploy on Vercel
1. Go to [vercel.com](https://vercel.com)
2. Click **"New Project"**
3. Import your GitHub repository
4. Configure project settings:
   - **Framework Preset**: `Vite`
   - **Root Directory**: `frontend`
   - **Build Command**: `npm run build`
   - **Output Directory**: `dist`

### Step 5: Set Environment Variable
In Vercel dashboard → Project Settings → Environment Variables:
- **Name**: `MONGODB_URI`
- **Value**: Your MongoDB Atlas connection string
- **Environment**: `Production`

### Step 6: Deploy
Click **"Deploy"** and wait for completion.

## 🔧 MongoDB Atlas Setup

1. Go to [MongoDB Atlas](https://www.mongodb.com/atlas)
2. Create free account and cluster
3. Create database user
4. Get connection string (format: `mongodb+srv://username:password@cluster.mongodb.net/empdb`)

## ✅ What's Been Done

- ✅ Converted Express server to Vercel serverless functions
- ✅ Updated all API calls to use relative paths
- ✅ Added Vercel configuration
- ✅ Updated dependencies
- ✅ Created environment variable setup
- ✅ Added deployment script

## 🎯 Your Live App Features

- ✅ Create new employees
- ✅ View all employees in grid layout
- ✅ Edit employee details
- ✅ Delete employees with confirmation
- ✅ Data persists in MongoDB Atlas

## 🚨 Troubleshooting

**Build fails?**
- Check Vercel build logs
- Ensure `MONGODB_URI` is set in environment variables

**App doesn't load?**
- Verify MongoDB Atlas connection string
- Check if database user has proper permissions

**API errors?**
- Ensure environment variable is set correctly
- Check MongoDB Atlas network access (allow all IPs: 0.0.0.0/0)

## 🎉 Success!

Your app will be live at: `https://your-app-name.vercel.app`

**Need help?** Share any error messages you encounter!