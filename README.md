# 🦞 OpenClaw 推广网站

为你的团队打造的 OpenClaw 推广网站，酷炫、现代、易用！

## 🌐 在线预览

[GitHub Pages 链接](https://你的用户名.github.io/openclaw-promo/)

## ✨ 功能特点

- 🎨 渐变紫色主题设计
- ✨ 动画效果和浮动元素
- 📱 完全响应式（手机/平板/电脑）
- 🦞 会挥手的龙虾吉祥物
- 📊 团队使用追踪（本地存储）
- 📝 4 步快速搭建教程

## 🚀 部署到 GitHub Pages

### 步骤 1：创建 GitHub 仓库

1. 访问 https://github.com/new
2. 仓库名：`openclaw-promo`
3. 设为 **Public**
4. 点击 **Create repository**

### 步骤 2：推送代码到 GitHub

```bash
cd /home/admin/.openclaw/workspace/openclaw-promo

# 添加远程仓库（替换为你的 GitHub 用户名）
git remote add origin https://github.com/你的用户名/openclaw-promo.git

# 推送代码
git push -u origin main
```

### 步骤 3：启用 GitHub Pages

1. 进入你的 GitHub 仓库页面
2. 点击 **Settings** → **Pages**
3. **Source** 选择：`Deploy from a branch`
4. **Branch** 选择：`main` / 文件夹：`/ (root)`
5. 点击 **Save**

### 步骤 4：访问网站

等待 1-2 分钟，然后访问：
```
https://你的用户名.github.io/openclaw-promo/
```

## 📊 团队追踪功能

网站包含互动表格，团队成员可以：
- 填写姓名、技能数、使用场景
- 点击"加入"按钮
- 数据保存在浏览器本地存储

**进阶方案：**
- 用 Google Sheets 做后端（免费）
- 用 Airtable 做数据库
- 用简单的 API + 数据库

## 💡 推广建议

### 团队内分享模板

```
🦞 兄弟们，我做了个 OpenClaw 推广网站！
https://你的用户名.github.io/openclaw-promo/

5 分钟就能搭建好自己的 AI 助手，
我已经装了 14 个技能，每天自动给我推天气和新闻～

试试不？有问题随时问我！
```

### 现场演示建议

1. ✅ 展示每日自动推送（天气 + 新闻）
2. ✅ 演示报告生成（Word/PDF）
3. ✅ 展示技能市场搜索
4. ✅ 现场搭建一个简单技能

## 🛠️ 本地开发

```bash
# 本地预览
cd /home/admin/.openclaw/workspace/openclaw-promo
python3 -m http.server 8080

# 访问 http://localhost:8080
```

## 📁 文件结构

```
openclaw-promo/
└── index.html    # 主页面（单文件，包含所有 CSS/JS）
```

## 🎨 自定义

### 修改配色
编辑 `index.html` 中的 CSS：
```css
.gradient-bg {
    background: linear-gradient(135deg, #你的颜色 0%, #你的颜色 100%);
}
```

### 添加团队信息
编辑 `index.html` 中的 JavaScript：
```javascript
const teamData = [
    { name: '🦞 龙虾', skills: '14 个技能', use: '日报推送', status: '✅ 已启用' },
    { name: '成员 2', skills: '5 个技能', use: '天气推送', status: '✅ 已启用' },
    // 添加更多成员...
];
```

## 📞 支持

- 📖 [OpenClaw 官方文档](https://docs.openclaw.ai)
- 💬 [Discord 社区](https://discord.gg/clawd)
- 🛠️ [ClawHub 技能市场](https://clawhub.com)

---

**Made with ❤️ by OpenClaw Community**
