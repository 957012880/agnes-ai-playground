# Deployment Guide - Agnes AI Playground

## Current Status

- ✅ Main file: `agnes-playground-v2.html` (138 KB)
- ✅ GitHub repository: https://github.com/957012880/agnes-ai-playground
- ✅ Branch: `main`
- ✅ Commits: 7

---

## Cloudflare Pages Deployment

### Step 1: Create Project

1. Go to **https://dash.cloudflare.com/pages**
2. Click **"Create project"** → **"Connect to Git"**
3. Select **GitHub** and authorize Cloudflare
4. Choose repository: `957012880/agnes-ai-playground`

### Step 2: Configure Build Settings

| Setting | Value |
|---------|-------|
| Framework preset | **None** |
| Build command | `cp agnes-playground-v2.html index.html` |
| Build output directory | `.` |
| Environment variables | None needed |

### Step 3: Deploy

1. Click **"Save and Deploy"**
2. Wait for deployment to complete
3. Your site will be live at: `https://agnes-ai-playground.pages.dev`

---

## Custom Domain (Optional)

1. Go to your Cloudflare Pages project
2. Click **"Custom Domains"**
3. Add your domain (e.g., `agnes.yourdomain.com`)
4. Follow DNS configuration instructions

---

## Project Files

| File | Size | Description |
|------|------|-------------|
| `agnes-playground-v2.html` | 138 KB | Main application (single file) |
| `README.md` | 1.2 KB | Chinese documentation |
| `README.en.md` | 1.4 KB | English documentation |
| `DEPLOYMENT.md` | 4 KB | Deployment guide (Chinese) |
| `QUICKSTART.md` | 3 KB | Quick start guide (Chinese) |
| `.gitignore` | 213 B | Git ignore rules |

---

## API Configuration

The application requires an Agnes AI API key. Get one from:
- International: https://platform.agnes-ai.com
- China: https://platform.agnes-ai.cn

Configure in the app settings:
- **Base URL**: `https://apihub.agnes-ai.com/v1` (International) or `https://apihub.agnes-ai.cn/v1` (China)
- **API Key**: Your personal API key

---

## Troubleshooting

### Build Command Required
⚠️ **Important**: Cloudflare Pages requires a build command even for static files. Use:
```bash
cp agnes-playground-v2.html index.html
```

### Common Issues

| Issue | Solution |
|-------|----------|
| 404 on root path | Ensure build command copies to `index.html` |
| Assets not loading | Check "Build output directory" is set to `.` |
| API errors | Verify API key and base URL in app settings |

---

## Next Steps

1. ✅ Code pushed to GitHub
2. ⏳ Connect to Cloudflare Pages via dashboard
3. ⏳ Test the live site
4. (Optional) Add custom domain
5. (Optional) Add MCP integration later
