# ✅ Render Deployment Checklist

Use this checklist to deploy your BullsEye backend to Render step by step.

---

## 📋 Pre-Deployment

- [ ] Git changes committed and pushed to GitHub
- [ ] Gmail App Password generated (for OTP emails)
- [ ] Vercel frontend URL ready
- [ ] Render account created ([render.com](https://render.com))

---

## 🗄️ Database Setup (5 minutes)

- [ ] Go to Render Dashboard
- [ ] Click **New** → **PostgreSQL**
- [ ] Configure:
  - [ ] Name: `bullseye-db`
  - [ ] Database: `bullseye_db`
  - [ ] User: `bullseye_user`
  - [ ] Region: Select closest
  - [ ] Plan: **Free**
- [ ] Click **Create Database**
- [ ] Wait for database to provision (~2 min)
- [ ] Copy **Internal Database URL** (save for later)

---

## 🚀 Web Service Setup (10 minutes)

- [ ] Go to Render Dashboard
- [ ] Click **New** → **Web Service**
- [ ] Connect GitHub repository
- [ ] Configure Basic Settings:
  - [ ] Name: `bullseye-backend`
  - [ ] Region: Same as database
  - [ ] Branch: `main`
  - [ ] Root Directory: `backend/backend`
  - [ ] Runtime: **Java**
  
- [ ] Configure Build Settings:
  - [ ] Build Command: `chmod +x ./mvnw && ./mvnw clean package -DskipTests`
  - [ ] Start Command: `java -Dserver.port=$PORT -Dspring.profiles.active=prod -jar target/backend-0.0.1-SNAPSHOT.jar`
  
- [ ] Configure Advanced:
  - [ ] Plan: **Free**
  - [ ] Auto-Deploy: **Yes**

---

## 🔐 Environment Variables (5 minutes)

Go to **Environment** tab and add these variables:

- [ ] `DATABASE_URL` = *Paste Internal Database URL from Step 1*
- [ ] `JAVA_VERSION` = `17`
- [ ] `MAIL_USERNAME` = `your-email@gmail.com`
- [ ] `MAIL_PASSWORD` = *Your Gmail App Password (16 chars)*
- [ ] `CORS_ALLOWED_ORIGINS` = `https://your-app.vercel.app,http://localhost:4200`

### Gmail App Password Steps:
- [ ] Go to [Google Account Security](https://myaccount.google.com/security)
- [ ] Enable 2-Step Verification (if not already)
- [ ] Go to **App Passwords**
- [ ] Generate new password for "Mail"
- [ ] Copy 16-character code (no spaces)
- [ ] Use as `MAIL_PASSWORD`

---

## 🎯 Deploy (5-10 minutes)

- [ ] Click **Create Web Service**
- [ ] Wait for build to complete (~5-10 minutes)
- [ ] Monitor **Logs** tab for progress
- [ ] Wait for "Your service is live" message
- [ ] Copy your Render URL: `https://your-app.onrender.com`

---

## 🧪 Test Backend (5 minutes)

Test these endpoints (replace with your actual URL):

- [ ] Health Check:
  ```bash
  curl https://your-app.onrender.com/actuator/health
  ```
  Expected: `{"status":"UP"}`

- [ ] Get Stocks:
  ```bash
  curl https://your-app.onrender.com/api/stocks
  ```
  Expected: JSON array of stocks

- [ ] Trending Stocks:
  ```bash
  curl https://your-app.onrender.com/api/stocks/trending
  ```
  Expected: JSON array of trending stocks

---

## 🌐 Update Frontend (5 minutes)

### Option A: Update Vercel Environment Variable
- [ ] Go to Vercel Project
- [ ] Settings → Environment Variables
- [ ] Find `API_URL` (or create it)
- [ ] Set value: `https://your-app.onrender.com/api`
- [ ] Click **Save**
- [ ] Redeploy frontend

### Option B: Update Code
- [ ] Edit `frontend/bullseye-ui/src/environments/environment.prod.ts`
- [ ] Update `apiUrl` to your Render URL
- [ ] Commit and push to GitHub
- [ ] Vercel auto-deploys

---

## ✅ End-to-End Testing (5 minutes)

Test from your frontend:

- [ ] Open frontend: `https://your-app.vercel.app`
- [ ] Test **Login** with existing account
- [ ] Test **Registration** with new email
- [ ] Test **OTP Login** feature
- [ ] View **Dashboard** (stocks should load)
- [ ] Test **Search** functionality
- [ ] Test **Buy/Sell** stocks (if applicable)
- [ ] Check **Portfolio** page
- [ ] Verify **Stock Details** modal works

---

## 📊 Optional: Database Migration

If you have existing data from Railway:

### Export from Railway:
- [ ] Go to Railway Dashboard
- [ ] Open database service
- [ ] Copy connection details
- [ ] Run:
  ```bash
  pg_dump -h railway-host -U user -d db > backup.sql
  ```

### Import to Render:
- [ ] Go to Render Dashboard
- [ ] Open database service
- [ ] Copy connection details
- [ ] Run:
  ```bash
  psql -h render-host -U user -d db < backup.sql
  ```

---

## 🎉 Post-Deployment

- [ ] Monitor application logs for 1 hour
- [ ] Check for any errors or warnings
- [ ] Test during peak usage time
- [ ] Set up monitoring/alerts (optional)
- [ ] Backup database (optional)
- [ ] Document your Render URLs:
  - Backend: `https://_____________________.onrender.com`
  - Frontend: `https://_____________________.vercel.app`

---

## ⚠️ Important Notes

- [ ] **Free tier sleeps after 15 minutes** - First request takes ~60 seconds
- [ ] **Database expires in 90 days** - Set reminder to backup or upgrade
- [ ] **Monitor usage** - Free tier has 750 hours/month limit
- [ ] **CORS configured** - Update if you add new frontend domains

---

## 🐛 Troubleshooting

If something goes wrong:

### Build Fails:
- [ ] Check build logs in Render dashboard
- [ ] Verify `mvnw` is executable and in Git
- [ ] Confirm Java 17 is set in environment variables

### Database Connection Fails:
- [ ] Verify `DATABASE_URL` is set correctly
- [ ] Check database is running in Render dashboard
- [ ] Review logs for connection errors

### CORS Errors:
- [ ] Verify `CORS_ALLOWED_ORIGINS` includes your Vercel URL
- [ ] Ensure no trailing slashes in URLs
- [ ] Check frontend is using HTTPS (not HTTP)

### Frontend Can't Connect:
- [ ] Verify backend URL is correct in frontend config
- [ ] Check backend is running (not sleeping)
- [ ] Test API endpoints directly with curl

---

## 📚 Resources

- [ ] [Render Deployment Guide](backend/backend/RENDER_DEPLOYMENT_GUIDE.md)
- [ ] [Render Quick Start](backend/backend/RENDER_QUICK_START.md)
- [ ] [Migration Summary](RAILWAY_TO_RENDER_MIGRATION.md)
- [ ] [Render Documentation](https://render.com/docs)

---

## ✨ Completion

- [ ] All tests passing
- [ ] Frontend and backend connected
- [ ] No errors in logs
- [ ] Users can login and trade
- [ ] Railway services shut down (optional)

---

**Congratulations! Your app is live on Render! 🎉**

**Total Time:** ~30-40 minutes

---

*Keep this checklist for future reference or redeployments*
