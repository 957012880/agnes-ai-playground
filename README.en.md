# Agnes AI Playground

A full-featured AI playground supporting text chat, text-to-image, image-to-image, text-to-video, and image-to-video generation.

## Features

- 💬 **Text Chat** - Multi-model support (Flash/Pro)
- 🖼️ **Text-to-Image** - Multiple resolutions and aspect ratios
- 🎨 **Image-to-Image** - Edit images based on originals
- 🎬 **Text-to-Video** - Various parameter configurations
- 🖼️ **Image-to-Video** - Convert images to videos
- ✨ **Prompt Generator** - AI-assisted professional prompt generation
- 🌙/☀️ **Day/Night Mode** - Theme switching support
- 📱 **Responsive Design** - Works on mobile, tablet, and desktop

## Tech Stack

- Pure frontend HTML/CSS/JS
- Cloudflare Pages deployment
- Agnes AI API

## Local Usage

Simply double-click `agnes-playground-v2.html` to open it in your browser.

## Deployment

### Cloudflare Pages

1. Push code to GitHub repository
2. Connect GitHub repository in Cloudflare Dashboard
3. Build configuration:
   - Build command: `cp agnes-playground-v2.html index.html`
   - Build output: `.`
4. Deploy and access at https://your-project.pages.dev

## API Configuration

Configure in the page settings:
- API Key: Get from [platform.agnes-ai.com](https://platform.agnes-ai.com)
- Base URL: Choose international (`https://apihub.agnes-ai.com/v1`) or China (`https://apihub.agnes-ai.cn/v1`)

## Supported Models

| Model | Type | Price |
|-------|------|-------|
| agnes-2.5-flash | Text | Free |
| agnes-image-2.1-flash | Image | Free |
| agnes-video-2.5-flash | Video | Free (limited) |
| agnes-video-2.5 | Video | Paid (720P/960P/2K) |
| agnes-video-v2.0 | Video | Free |

## Repository

- GitHub: https://github.com/957012880/agnes-ai-playground

## License

MIT
