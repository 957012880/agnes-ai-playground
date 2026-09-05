# Agnes AI Playground - Manual Deployment Guide

## 📦 Current Status

✅ **Project Ready:**
- Main file: `agnes-playground-v2.html` (138 KB, v2.0.10)
- Git initialized on branch `main`
- Commit: `30c4f9e Initial commit: Agnes AI Playground v2.0.10`

❌ **GitHub Push:** Network blocked from this environment

---

## 🚀 Step-by-Step Deployment

### Step 1: Push to GitHub (Do this manually)

Open your terminal and run:

```bash
cd E:\workbuddy\chengxu

# Verify git status
git status

# Add all files
git add -A

# Commit (if not already committed)
git commit -m "Initial commit: Agnes AI Playground v2.0.10"

# Push to GitHub
git push -u origin main
```

**Note:** The remote is already configured as:
```
https://@github.com/vocab-learner/agnes-ai-playground.git
```

If you get a "repository not found" error, create the repo first:
1. Go to https://github.com/new
2. Repository name: `agnes-ai-playground`
3. Make it Public
4. Click "Create repository"
5. Then run the push command above

---

### Step 2: Deploy to Cloudflare Pages

#### Option A: Via Web Dashboard (Recommended)

1. Go to **https://dash.cloudflare.com/pages**
2. Click **"Create project"** → **"Connect to Git"**
3. Select **GitHub** and authorize Cloudflare
4. Choose repository: `vocab-learner/agnes-ai-playground`
5. Configure build settings:
   - **Framework preset**: `None`
   - **Build command**: *(leave empty)*
   - **Build output directory**: `.`
   - **Environment variables**: None needed
6. Click **"Save and Deploy"**
7. Your site will be live at: `https://agnes-ai-playground.pages.dev`

#### Option B: Via Cloudflare API

Run this command after pushing to GitHub:

```bash
# Create Pages project
curl -X POST "https://api.cloudflare.com/client/v4/accounts/YOUR_ACCOUNT_ID/pages/projects" \
  -H "Authorization: Bearer YOUR_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{
    "name": "agnes-ai-playground",
    "production_branch": "main"
  }'

# Connect GitHub
curl -X POST "https://api.cloudflare.com/client/v4/accounts/YOUR_ACCOUNT_ID/pages/projects/agnes-ai-playground/git" \
  -H "Authorization: Bearer YOUR_API_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{
    "type": "github",
    "repo": "vocab-learner/agnes-ai-playground"
  }'
```

---

### Step 3: Custom Domain (Optional)

1. Go to your Cloudflare Pages project
2. Click **"Custom Domains"**
3. Add your domain (e.g., `agnes.yourdomain.com`)
4. Follow DNS configuration instructions

---

## 📁 Project Files

| File | Size | Description |
|------|------|-------------|
| `agnes-playground-v2.html` | 138 KB | Main application (single file) |
| `README.md` | 1.2 KB | Project documentation |
| `DEPLOYMENT.md` | 1.9 KB | This deployment guide |
| `.gitignore` | 213 B | Git ignore rules |

---

## ✨ Features Included

- 💬 Text chat (agnes-2.5-flash, free)
- 🖼️ Text-to-Image (agnes-image-2.1-flash, free)
- 🎨 Image-to-Image editing
- 🎬 Text-to-Video (agnes-video-2.5-flash, free)
- 🖼️ Image-to-Video
- 🎞️ Keyframe Video generation
- ✨ AI prompt generators (image & video)
- 🌙/☀️ Day/Night mode toggle
- 📱 Fully responsive (mobile/tablet/desktop)
- 🔧 Seed parameter for reproducible results

---

## 🔧 Troubleshooting

### GitHub Push Fails
```bash
# Check remote URL
git remote -v

# Fix if needed
git remote set-url origin https://YOUR_TOKEN@github.com/vocab-learner/agnes-ai-playground.git

# Force push (if needed)
git push -f origin main
```

### Cloudflare Build Fails
- Make sure "Build output directory" is set to `.`
- No build command needed (static HTML file)
- Check deployment logs in Cloudflare dashboard

### API Key Not Working
- Verify key at https://platform.agnes-ai.com
- Use international endpoint: `https://apihub.agnes-ai.com/v1`
- Use domestic endpoint: `https://apihub.agnes-ai.cn/v1` (for China)

---

## 📝 Next Steps

1. [ ] Run `git push` from your local terminal
2. [ ] Connect to Cloudflare Pages via dashboard
3. [ ] Test the live site
4. [ ] (Optional) Add custom domain
5. [ ] (Optional) Add MCP integration later
