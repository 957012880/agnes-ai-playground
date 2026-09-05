# Agnes AI Playground - 快速开始

## 📋 前置条件

1. ✅ Git 已安装
2. ✅ GitHub 账号，仓库 `957012880/agnes-ai-playground` 已创建
3. ✅ Cloudflare 账号已准备

## 🚀 一键部署（在本地终端运行）

打开 **Git Bash** 或 **PowerShell**，运行以下命令：

### 第 1 步：推送到 GitHub

```bash
cd E:\workbuddy\chengxu
git push -u origin main
```

### 第 2 步：部署到 Cloudflare Pages

**方法 A：使用 Web Dashboard（推荐）**
1. 访问 https://dash.cloudflare.com/pages
2. 点击 "Create project" → "Connect to Git"
3. 选择 GitHub 账号和 `957012880/agnes-ai-playground` 仓库
4. 设置：
   - Framework preset: **None**
   - Build command: `cp agnes-playground-v2.html index.html`
   - Build output directory: **.**
5. 点击 "Save and Deploy"
6. 完成后访问 https://agnes-ai-playground.pages.dev

## 📁 项目结构

```
E:\workbuddy\chengxu\
├── agnes-playground-v2.html    # 主应用文件 (138KB)
├── README.md                    # 项目说明（中文）
├── README.en.md                 # 项目说明（英文）
├── DEPLOYMENT.md                # 部署指南
├── QUICKSTART.md                # 快速开始
├── deploy.ps1                   # PowerShell 部署脚本
├── .gitignore                   # Git 忽略规则
└── .workbuddy/                  # 工作区配置
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

### GitHub Push 失败
```bash
# 检查远程配置
git remote -v

# 重新设置远程
git remote set-url origin https://YOUR_TOKEN@github.com/957012880/agnes-ai-playground.git

# 强制推送
git push -f origin main
```

### Cloudflare 部署失败
- 确保 "Build output directory" 设置为 `.`
- Build command 必须填写：`cp agnes-playground-v2.html index.html`
- 不需要额外的构建工具

## 📝 后续步骤

1. ✅ 推送代码到 GitHub
2. ⏳ 连接到 Cloudflare Pages
3. ⏳ 测试在线站点
4. (可选) 配置自定义域名
5. (可选) 添加 MCP 功能集成
