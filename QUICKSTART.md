# Agnes AI Playground - 快速开始

## 📋 前置条件

1. ✅ Git 已安装
2. ✅ GitHub 账号已创建仓库 `957012880/agnes-ai-playground`
3. ✅ Cloudflare 账号已准备好

## 🚀 部署步骤

### 第 1 步：推送到 GitHub

代码已推送到 GitHub：
- **仓库**: https://github.com/957012880/agnes-ai-playground
- **分支**: main
- **文件**: 9 个

如需手动推送：
```bash
cd E:\workbuddy\chengxu
git push -u origin main
```

### 第 2 步：部署到 Cloudflare Workers

**方法 A：手动上传（推荐）**
1. 访问 https://dash.cloudflare.com/workers
2. 点击 "Create Worker"
3. 上传 `index.html` 文件作为 Worker 响应内容
4. 保存并部署
5. 访问 https://agnes.daoh.ccwu.cc

**方法 B：使用 Pages（备用）**
1. 访问 https://dash.cloudflare.com/pages
2. 创建项目并连接 GitHub 仓库
3. 配置：
   - Framework preset: **None**
   - Build command: `cp agnes-playground-v2.html index.html`
   - Build output: `.`
4. 点击 "Save and Deploy"

## 📁 项目结构

```
E:\workbuddy\chengxu\
├── agnes-playground-v2.html    # 主应用文件 (138KB)
├── index.html                  # 入口文件（复制自主应用）
├── README.md                   # 中文说明
├── README.en.md                # 英文说明
├── DEPLOYMENT.md               # 部署指南（中文）
├── DEPLOYMENT.en.md            # 部署指南（英文）
├── QUICKSTART.md               # 快速开始指南
├── .gitignore                  # Git 忽略规则
└── .workbuddy/                 # 工作区配置
```

## ✨ 功能列表

- 💬 文本对话（agnes-2.5-flash，免费）
- 🖼️ 文生图（agnes-image-2.1-flash，免费）
- 🎨 图生图编辑
- 🎬 文生视频（agnes-video-2.5-flash，限时免费）
- 🖼️ 图生视频
- 🎞️ 关键帧视频
- ✨ AI 提示词生成器
- 🌙/☀️ 白天/夜晚模式切换
- 📱 响应式设计（手机/平板/桌面）

## 🔧 故障排除

### Cloudflare Workers 部署失败
- 确保上传的是 `index.html` 文件
- 检查 Worker 代码是否正确返回 HTML

### API Key 不工作
- 验证 Key 在 https://platform.agnes-ai.com
- 国际站：`https://apihub.agnes-ai.com/v1`
- 国内站：`https://apihub.agnes-ai.cn/v1`

## 📝 当前状态

1. ✅ 代码已推送到 GitHub
2. ✅ Cloudflare Workers 部署成功
3. ✅ 在线访问：https://agnes.daoh.ccwu.cc/
4. (可选) 配置自定义域名
5. (可选) 添加 MCP 功能集成
