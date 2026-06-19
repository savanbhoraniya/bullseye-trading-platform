# 🚀 Render Deployment Guide - BullsEye Backend

This guide will help you deploy your Spring Boot backend to Render.com (free tier).

---

## 📋 Prerequisites

1. **Render Account**: Sign up at [render.com](https://render.com)
2. **GitHub Repository**: Your code should be pushed to GitHub
3. **Email Credentials**: Gmail account with App Password for OTP emails

---

## 🗄️ Step 1: Create PostgreSQL Database

1. Go to Render Dashboard → **New** → **PostgreSQL**
2. Configure:
   - **Name**: `bullseye-db`
   - **Database**: `bullseye_db`
   - **User**: `bullseye_user`
   - **Region**: Choose closest to you
   - **Plan**: **Free**
3. Click **Create Database**
4. Wait for database to be created (~2 minutes)
5. **Copy the Internal Database URL** (you'll need this later)

---

## 🌐 Step 2: Create Web Service

1. Go to Render Dashboard → **New** → **Web Service**
2. Connect your GitHub repository
3. Configure:

### Basic Settings:
- **Name**: `bullseye-backend`
- **Region**: Same as your database
- **Branch**: `main` (or your default branch)
- **Root Directory**: `backend/backend` (if your Spring Boot app is nested)
- **Runtime**: **Java**

### Build & Deploy:
- **Build Command**:
  ```bash
  chmod +x ./mvnw && ./mvnw clean package -DskipTests
  ```
  
- **Start Command**:
  ```bash
  java -Dserver.port=$PORT -Dspring.profiles.active=prod -jar target/backend-0.0.1-SNAPSHOT.jar
  ```

### Advanced Settings:
- **Plan**: **Free**
- **Auto-Deploy**: **Yes** (recommended)

---

## 🔐 Step 3: Configure Environment Variables

In your web service settings, go to **Environment** tab and add these variables:

### Required Variables:

| Variable Name | Value | Description |
|---------------|-------|-------------|
| `DATABASE_URL` | *From your Render PostgreSQL* | Internal Database URL from Step 1 |
| `PORT` | `10000` | Render assigns this automatically |
| `JAVA_VERSION` | `17` | Java version for your app |
| `MAIL_USERNAME` | `your-email@gmail.com` | Gmail address for sending OTPs |
| `MAIL_PASSWORD` | `your-app-password` | Gmail App Password (NOT your regular password) |
| `CORS_ALLOWED_ORIGINS` | `https://your-vercel-app.vercel.app,http://localhost:4200` | Your frontend URLs (comma-separated) |

### How to Get Gmail App Password:
1. Go to [Google Account Security](https://myaccount.google.com/security)
2. Enable **2-Step Verification** (if not already enabled)
3. Go to **App Passwords**
4. Generate a new app password for "Mail"
5. Copy the 16-character password (no spaces)
6. Use this as `MAIL_PASSWORD`

---

## 🎯 Step 4: Deploy

1. Click **Create Web Service**
2. Render will automatically:
   - Clone your repository
   - Run the build command
   - Start your application
3. Wait for deployment (~5-10 minutes for first deployment)
4. Monitor logs in the **Logs** tab

---

## ✅ Step 5: Verify Deployment

### Check Health:
Visit: `https://your-app.onrender.com/actuator/health`

You should see:
```json
{
  "status": "UP"
}
```

### Test API Endpoints:
- Health Check: `GET https://your-app.onrender.com/actuator/health`
- Stocks: `GET https://your-app.onrender.com/api/stocks`
- User Portfolio: `GET https://your-app.onrender.com/api/portfolio/{userId}`

---

## 🔗 Step 6: Update Frontend (Vercel)

Update your Angular frontend environment configuration:

### In `frontend/bullseye-ui/src/environments/environment.prod.ts`:
```typescript
export const environment = {
  production: true,
  apiUrl: 'https://your-app.onrender.com/api'
};
```

### In Vercel Environment Variables:
1. Go to your Vercel project → **Settings** → **Environment Variables**
2. Update `API_URL` to: `https://your-app.onrender.com/api`
3. Redeploy your frontend

---

## 📊 Step 7: Run Database Migrations (Optional)

If you need to populate initial data:

1. Connect to your Render PostgreSQL database using the **External Database URL**
2. Use a PostgreSQL client like **pgAdmin**, **DBeaver**, or **psql**
3. Run your SQL scripts:
   ```bash
   psql -h <host> -U <user> -d <database> -f create_nse_stocks_tables.sql
   psql -h <host> -U <user> -d <database> -f insert_nse_stocks.sql
   ```

---

## 🎉 Important Notes

### Free Tier Limitations:
- ⚠️ **Sleeps after 15 minutes of inactivity**
  - First request after sleep takes ~30-60 seconds to wake up
  - Consider implementing a keep-alive ping service (optional)
  
- 💾 **750 hours/month runtime** (free tier)
  - Enough for a personal project
  
- 🗄️ **PostgreSQL expires after 90 days** (free tier)
  - Backup your data regularly
  - Consider upgrading for production apps

### Performance Tips:
1. **Connection Pooling**: Already configured in `application-prod.properties`
2. **Memory Limits**: Set to 512MB with `-Xmx512m` flag
3. **Hibernate Optimization**: `ddl-auto=update` for schema management

---

## 🐛 Troubleshooting

### Build Fails:
- Check that `mvnw` is executable: `chmod +x ./mvnw`
- Verify Java version is set to 17
- Check build logs for Maven errors

### Database Connection Issues:
- Verify `DATABASE_URL` is set correctly
- Check if database is running (Render dashboard)
- Ensure `DatabaseConfig.java` is parsing URL correctly

### Application Won't Start:
- Check if JAR file was built: Look for `target/backend-0.0.1-SNAPSHOT.jar`
- Verify `PORT` environment variable is set
- Check logs for startup errors

### CORS Errors:
- Update `CORS_ALLOWED_ORIGINS` to include your Vercel URL
- Make sure your frontend is using HTTPS (not HTTP)

### Email/OTP Not Working:
- Verify `MAIL_USERNAME` and `MAIL_PASSWORD` are correct
- Check if Gmail App Password is active
- Test with a simple email first

---

## 🔄 Continuous Deployment

Render automatically redeploys when you push to your connected GitHub branch:

1. Make changes locally
2. Commit and push to GitHub
3. Render detects changes and rebuilds
4. New version goes live automatically (~5-10 minutes)

---

## 📞 Support

### Render Documentation:
- [Render Docs](https://render.com/docs)
- [Render Java Guide](https://render.com/docs/deploy-spring-boot)

### Common Issues:
- [Render Community Forum](https://community.render.com/)

---

## ✨ Migration Checklist

- [x] Remove Railway configuration files (Procfile, nixpacks.toml, railway-start.sh)
- [x] Create Render configuration files (render.yaml, render-build.sh, render-start.sh)
- [x] Update DatabaseConfig.java comments
- [x] Update application-prod.properties
- [ ] Create Render account
- [ ] Create PostgreSQL database on Render
- [ ] Create web service on Render
- [ ] Configure environment variables
- [ ] Deploy and test
- [ ] Update frontend to use new backend URL
- [ ] Run database migrations (if needed)
- [ ] Test end-to-end functionality

---

**Happy Deploying! 🚀**
