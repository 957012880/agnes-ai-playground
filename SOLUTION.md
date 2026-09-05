# 解决方案：Cloudflare 部署

## 问题诊断

你访问的 https://agnes-ai-playground.957012880.workers.dev/ 返回 **502 Bad Gateway**。

原因：Workers 脚本不存在或未正确配置。

---

## 解决方案

### 方案一：使用 Cloudflare Pages（推荐）⭐

Pages 专为静态网站设计，零配置。

**步骤**:
1. 访问 https://dash.cloudflare.com/pages
2. 点击 "Create project" → "Connect to Git"
3. 选择 GitHub 仓库 `957012880/agnes-ai-playground`
4. 配置:
   ```
   Framework preset: None
   Build command: cp agnes-playground-v2.html index.html
   Build output directory: .
   ```
5. 点击 "Save and Deploy"
6. 访问: https://agnes-ai-playground.pages.dev

---

### 方案二：修复 Workers 部署

如果你必须使用 Workers：

1. 访问 https://dash.cloudflare.com/workers
2. 点击 "Create Worker"
3. 替换默认代码为 `worker.js` 的内容
4. 保存并部署

---

## 当前状态

| 项目 | 状态 |
|------|------|
| GitHub 仓库 | ✅ 13 个文件 |
| worker.js | ✅ 已创建 |
| Workers 部署 | ❌ 需要配置 |
| Pages 部署 | ⏳ 待创建 |

---

## 推荐操作

**立即执行**:
1. 打开 https://dash.cloudflare.com/pages
2. 按上述步骤创建 Pages 项目
3. 30 秒后获得可用链接

**为什么 Pages 更好？**
- 专为静态文件优化
- 零配置，自动 HTTPS
- 支持 GitHub 自动部署
- 全球 CDN 加速

