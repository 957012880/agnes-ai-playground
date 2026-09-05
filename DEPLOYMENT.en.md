# Deployment Guide - Agnes AI Playground

## Current Status

- ✅ Main file: `agnes-playground-v2.html` (138 KB)
- ✅ GitHub repository: https://github.com/957012880/agnes-ai-playground
- ✅ Branch: `main`
- ✅ Commits: 16
- ✅ Deployed: https://agnes.daoh.ccwu.cc/

---

## Cloudflare Workers Deployment (Active)

### Method 1: Manual Upload (Recommended)

1. Go to **https://dash.cloudflare.com/workers**
2. Click **"Create Worker"**
3. Upload `index.html` as the Worker response content
4. Save and deploy
5. Access at: **https://agnes.daoh.ccwu.cc/**

### Method 2: Via GitHub Actions (Optional)

Configure a GitHub Action to automatically deploy on push:

```yaml
name: Deploy to Cloudflare Workers
on:
  push:
    branches: [main]
jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - uses: cloudflare/wrangler-action@v3
        with:
          apiToken: ${{ secrets.CLOUDFLARE_API_TOKEN }}
          accountId: ${{ secrets.CLOUDFLARE_ACCOUNT_ID }}
```

---

## Cloudflare Pages Deployment (Alternative)

If you prefer Pages instead of Workers:

1. Go to **https://dash.cloudflare.com/pages**
2. Click **"Create project"** → **"Connect to Git"**
3. Select repository: `957012880/agnes-ai-playground`
4. Configure:
   | Setting | Value |
   |---------|-------|
   | Framework preset | **None** |
   | Build command | `cp agnes-playground-v2.html index.html` |
   | Build output | `.` |
5. Click **"Save and Deploy"**
6. Access at: `https://agnes-ai-playground.pages.dev`

---

## Custom Domain

1. Go to Cloudflare Dashboard → Workers & Pages
2. Select your worker/project
3. Click **"Custom Domains"**
4. Add your domain (e.g., `agnes.yourdomain.com`)
5. Follow DNS configuration instructions

---

## Project Files

| File | Size | Description |
|------|------|-------------|
| `agnes-playground-v2.html` | 138 KB | Main application |
| `index.html` | 138 KB | Entry point (same as main) |
| `README.md` | 1.3 KB | Chinese documentation |
| `README.en.md` | 1.8 KB | English documentation |
| `DEPLOYMENT.md` | 4 KB | Chinese deployment guide |
| `DEPLOYMENT.en.md` | 2.5 KB | English deployment guide |
| `QUICKSTART.md` | 3 KB | Quick start guide |
| `.gitignore` | 183 B | Git ignore rules |
| `.workbuddy/memory/` | - | Workspace memory |

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

### Workers Deployment Issues
- Ensure `index.html` is uploaded correctly
- Check Worker code returns proper HTML
- Verify CORS headers if using API

### Pages Deployment Issues
- Set "Build output directory" to `.`
- Use build command: `cp agnes-playground-v2.html index.html`
- Check deployment logs in dashboard

### API Key Not Working
- Verify key at https://platform.agnes-ai.com
- Use international endpoint: `https://apihub.agnes-ai.com/v1`
- Use domestic endpoint: `https://apihub.agnes-ai.cn/v1`

---

## Supported Models

| Model | Type | Price |
|-------|------|-------|
| agnes-2.5-flash | Text | Free |
| agnes-image-2.1-flash | Image | Free |
| agnes-video-2.5-flash | Video | Free (limited) |
| agnes-video-2.5 | Video | Paid (720P/960P/2K) |
| agnes-video-v2.0 | Video | Free |

---

## Next Steps

1. ✅ Code pushed to GitHub
2. ✅ Deployed to Cloudflare Workers
3. ✅ Live at: https://agnes.daoh.ccwu.cc/
4. (Optional) Add custom domain
5. (Optional) Add MCP integration later
