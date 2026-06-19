# ⚡ Render Quick Start - BullsEye Backend

## 🚀 Deploy in 5 Steps

### 1️⃣ Create Database
- Go to [Render Dashboard](https://dashboard.render.com) → **New** → **PostgreSQL**
- Name: `bullseye-db`
- Plan: **Free**
- Copy the **Internal Database URL**

---

### 2️⃣ Create Web Service
- Go to Render → **New** → **Web Service**
- Connect your GitHub repo
- Settings:
  - **Name**: `bullseye-backend`
  - **Root Directory**: `backend/backend`
  - **Runtime**: **Java**
  - **Build Command**: 
    ```bash
    chmod +x ./mvnw && ./mvnw clean package -DskipTests
    ```
  - **Start Command**: 
    ```bash
    java -Dserver.port=$PORT -Dspring.profiles.active=prod -jar target/backend-0.0.1-SNAPSHOT.jar
    ```

---

### 3️⃣ Add Environment Variables

| Variable | Value |
|----------|-------|
| `DATABASE_URL` | *Paste Internal Database URL from Step 1* |
| `JAVA_VERSION` | `17` |
| `MAIL_USERNAME` | `your-email@gmail.com` |
| `MAIL_PASSWORD` | *Your Gmail App Password* |
| `CORS_ALLOWED_ORIGINS` | `https://your-app.vercel.app` |

**Get Gmail App Password:**
1. [Google Account Security](https://myaccount.google.com/security)
2. Enable 2-Step Verification
3. Create App Password → Mail
4. Copy 16-character code

---

### 4️⃣ Deploy
- Click **Create Web Service**
- Wait ~5-10 minutes
- Monitor logs for success

---

### 5️⃣ Update Frontend
Update your Vercel app environment variable:
- `API_URL` = `https://your-app.onrender.com/api`

---

## 🧪 Test Your API

```bash
# Health Check
curl https://your-app.onrender.com/actuator/health

# Get Stocks
curl https://your-app.onrender.com/api/stocks
```

---

## ⚠️ Free Tier Notes

- ✅ **Free forever** (750 hours/month)
- ⏸️ **Sleeps after 15 min inactivity** (wakes in ~60 sec)
- 🗄️ **PostgreSQL expires in 90 days** (backup regularly)

---

## 🔗 Your URLs

After deployment:
- **Backend API**: `https://bullseye-backend.onrender.com`
- **Health Check**: `https://bullseye-backend.onrender.com/actuator/health`
- **Database**: Accessible via Render dashboard

---

## 📚 Full Guide

See [RENDER_DEPLOYMENT_GUIDE.md](./RENDER_DEPLOYMENT_GUIDE.md) for detailed instructions.

---

**Deployment Time: ~15 minutes total** ⏱️
