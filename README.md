# Agnes AI Playground

全模态 AI 工作台，支持文本对话、文生图、图生图、文生视频、图生视频等功能。

## 在线演示

- **Cloudflare Pages**: https://agnes-ai-playground.pages.dev

## 功能

- 💬 **文本对话** - 多模型支持（Flash/Pro）
- 🖼️ **文生图** - 支持多分辨率和尺寸
- 🎨 **图生图** - 基于原图的图像编辑
- 🎬 **文生视频** - 支持多种参数配置
- 🖼️ **图生视频** - 图片转视频
- ✨ **提示词生成器** - AI 辅助生成专业提示词
- 🌙/☀️ **日夜模式** - 支持主题切换
- 📱 **响应式设计** - 适配手机、平板、桌面

## 技术栈

- 纯前端 HTML/CSS/JS
- Cloudflare Pages 部署
- Agnes AI API

## 本地运行

直接双击 `agnes-playground-v2.html` 即可在浏览器中打开使用。

## 部署

### Cloudflare Pages

1. 将代码推送到 GitHub 仓库
2. 在 Cloudflare Dashboard 连接 GitHub 仓库
3. 选择构建配置：
   - Build command: （留空）
   - Build output: `.`
4. 部署完成后可访问 https://your-project.pages.dev

## API 配置

在页面设置中配置：
- API Key：从 [platform.agnes-ai.com](https://platform.agnes-ai.com) 获取
- Base URL：选择国际站或国内站

## 许可证

MIT
