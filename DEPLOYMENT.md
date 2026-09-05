# Agnes AI Playground - 部署指南

## 当前状态

- ✅ 主文件: `agnes-playground-v2.html` (138 KB)
- ✅ GitHub 仓库: https://github.com/957012880/agnes-ai-playground
- ✅ 分支: `main`
- ✅ Commits: 16 个
- ✅ 已部署: https://agnes.daoh.ccwu.cc/

---

## Cloudflare Workers 部署（已启用）

### 方法 A：手动上传（推荐）⭐

1. 访问 **https://dash.cloudflare.com/workers**
2. 点击 **"Create Worker"**
3. 上传 `index.html` 文件作为 Worker 响应内容
4. 保存并部署
5. 访问: **https://agnes.daoh.ccwu.cc/**

### 方法 B：通过 GitHub Actions 自动部署（可选）

配置 GitHub Action 在推送时自动部署：

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

## Cloudflare Pages 部署（备用）

如果更喜欢 Pages 而不是 Workers：

1. 访问 **https://dash.cloudflare.com/pages**
2. 点击 **"Create project"** → **"Connect to Git"**
3. 选择仓库: `957012880/agnes-ai-playground`
4. 配置:
   | 设置 | 值 |
   |------|-----|
   | Framework preset | **None** |
   | Build command | `cp agnes-playground-v2.html index.html` |
   | Build output | `.` |
5. 点击 **"Save and Deploy"**
6. 访问: `https://agnes-ai-playground.pages.dev`

---

## 自定义域名

1. 前往 Cloudflare Dashboard → Workers & Pages
2. 选择你的 worker/项目
3. 点击 **"Custom Domains"**
4. 添加域名（如 `agnes.yourdomain.com`）
5. 按照 DNS 配置说明操作

---

## 项目文件

| 文件 | 大小 | 说明 |
|------|------|------|
| `agnes-playground-v2.html` | 138 KB | 主应用 |
| `index.html` | 138 KB | 入口文件（与主应用相同） |
| `README.md` | 1.3 KB | 中文说明 |
| `README.en.md` | 1.8 KB | 英文说明 |
| `DEPLOYMENT.md` | 4 KB | 中文部署指南 |
| `DEPLOYMENT.en.md` | 2.5 KB | 英文部署指南 |
| `QUICKSTART.md` | 3 KB | 快速开始指南 |
| `.gitignore` | 183 B | Git 忽略规则 |
| `.workbuddy/memory/` | - | 工作记忆 |

---

## API 配置

应用需要 Agnes AI API Key。获取地址：
- 国际站: https://platform.agnes-ai.com
- 国内站: https://platform.agnes-ai.cn

在应用设置中配置：
- **Base URL**: `https://apihub.agnes-ai.com/v1`（国际）或 `https://apihub.agnes-ai.cn/v1`（国内）
- **API Key**: 你的个人 API Key

---

## 故障排除

### Workers 部署问题
- 确保正确上传了 `index.html` 文件
- 检查 Worker 代码是否正确返回 HTML
- 如果使用 API，验证 CORS 头设置

### Pages 部署问题
- 确保 "Build output directory" 设置为 `.`
- 使用构建命令: `cp agnes-playground-v2.html index.html`
- 在 dashboard 中查看部署日志

### API Key 不工作
- 验证 Key 在 https://platform.agnes-ai.com
- 国际站端点: `https://apihub.agnes-ai.com/v1`
- 国内站端点: `https://apihub.agnes-ai.cn/v1`

---

## 支持的模型

| 模型 | 类型 | 价格 |
|------|------|------|
| agnes-2.5-flash | 文本 | 免费 |
| agnes-image-2.1-flash | 图片 | 免费 |
| agnes-video-2.5-flash | 视频 | 免费（受限） |
| agnes-video-2.5 | 视频 | 付费（720P/960P/2K） |
| agnes-video-v2.0 | 视频 | 免费 |

---

## 后续步骤

1. ✅ 代码已推送到 GitHub
2. ✅ 已部署到 Cloudflare Workers
3. ✅ 在线访问: https://agnes.daoh.ccwu.cc/
4. (可选) 添加自定义域名
5. (可选) 稍后添加 MCP 集成
