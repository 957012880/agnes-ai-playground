## 2026-09-06 Agnes AI Playground v2.0 全面升级

### 新增模型支持
- 文本：agnes-2.5-flash（默认推荐，免费）
- 视频：agnes-video-2.5-flash（限时免费，$0/秒）、agnes-video-2.5（付费高清，720P/960P/2K）
- 图像：agnes-image-2.1-flash（推荐，高信息密度）

### 功能增强
- 视频参数动态切换：2.5 Flash 用 seconds+size，v2.0 用 num_frames+fps
- 图片分辨率四档：1K/2K/3K/4K（尺寸须为16的倍数）
- 视频轮询优化：支持 model_name 参数 + 超时保护（最多60次）
- API修复：response_format 正确放入 extra_body

### 新增页面
- 💰 Token Plan 配额表
- 🚨 错误码速查表
- ✅ 接入检查清单

### 提示词模板扩展
- 图片：产品图、海报、肖像、风景、建筑、动漫、赛博朋克、极简主义、水彩画、油画、概念艺术、复古、线条插画、故障艺术
- 视频：产品展示、人物动作、自然风光、美食制作、转场特效、运动慢动作、城市风光、抽象艺术、教程、时尚走秀

---

## v2.0.2 提示词功能升级 (2026-09-06)

### 文生图提示词生成器升级
- ✅ 系统提示词升级为结构化输出（【Positive Prompt】+ 【Negative Prompt】格式）
- ✅ 风格选择扩展至16种（新增 concept-art、illustration、vintage、line-art、glitch-art）
- ✅ 比例选择优化为6种标准比例（1:1 / 4:3 / 16:9 / 9:16 / 3:4 / 21:9）
- ✅ 新增用户自定义负面提示词输入框
- ✅ 结果分离显示：正面/负面/参数三个卡片，各带独立复制按钮
- ✅ temperature 从 0.8 降至 0.7，max_tokens 从 500 升至 800

### 文生视频提示词生成器升级
- ✅ 系统提示词升级为结构化输出（含【Suggested Settings】建议参数）
- ✅ 风格选择扩展至12种（新增 fantasy、horror、noir、vintage、timelapse、slow-motion）
- ✅ 镜头运动扩展至13种（新增 push in、orbit shot、steadicam、tilt up、bird's eye view、low angle）
- ✅ 新增用户自定义负面提示词输入框
- ✅ 结果分离显示：正面/负面/建议参数三个卡片
- ✅ temperature 从 0.8 降至 0.7，max_tokens 从 500 升至 800

### 备份文件
- `agnes-playground-v2-backup-20260906-002319.html`
- `agnes-playground-v2-backup-20260906-003338.html`
- `agnes-playground-v2-backup-20260906-003848.html`
- `agnes-playground-v2-backup-20260906-080000.html`（本次升级前备份）

---

*Workspace memory for chengxu project.*