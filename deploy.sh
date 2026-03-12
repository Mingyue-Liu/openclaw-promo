#!/bin/bash
# OpenClaw 推广网站 - GitHub 部署脚本
# 龙虾 🦞

echo "🦞 OpenClaw 推广网站 - GitHub 部署"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

# 检查是否已配置 git
if ! git config user.email >/dev/null 2>&1; then
    echo "⚠️  请先配置 git 用户信息："
    echo ""
    echo "git config --global user.email \"your@email.com\""
    echo "git config --global user.name \"Your Name\""
    echo ""
    exit 1
fi

# 获取 GitHub 用户名
echo "请输入你的 GitHub 用户名："
read -p "> " GITHUB_USER

if [ -z "$GITHUB_USER" ]; then
    echo "❌ 错误：GitHub 用户名不能为空"
    exit 1
fi

echo ""
echo "✅ GitHub 用户名：$GITHUB_USER"
echo ""

# 检查是否已有远程仓库
REMOTE_URL="https://github.com/$GITHUB_USER/openclaw-promo.git"

echo "📋 接下来请手动操作："
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "1️⃣  创建 GitHub 仓库"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "   访问：https://github.com/new"
echo "   仓库名：openclaw-promo"
echo "   设为 Public"
echo "   点击 Create repository"
echo ""
read -p "完成后按回车继续..."

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "2️⃣  推送代码到 GitHub"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "   运行以下命令："
echo ""
echo "   git remote add origin $REMOTE_URL"
echo "   git push -u origin main"
echo ""
echo "   或者（如果已有 origin）："
echo ""
echo "   git remote set-url origin $REMOTE_URL"
echo "   git push -u origin main"
echo ""

# 尝试自动推送
read -p "要现在尝试推送吗？(y/n): " answer
if [ "$answer" = "y" ]; then
    echo ""
    echo "🚀 推送中..."
    
    # 检查是否已有 remote
    if git remote | grep -q "origin"; then
        git remote set-url origin $REMOTE_URL
    else
        git remote add origin $REMOTE_URL
    fi
    
    # 推送
    if git push -u origin main 2>&1; then
        echo ""
        echo "✅ 推送成功！"
    else
        echo ""
        echo "⚠️  推送失败，请手动运行上面的命令"
    fi
fi

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "3️⃣  启用 GitHub Pages"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "   1. 访问：https://github.com/$GITHUB_USER/openclaw-promo/settings/pages"
echo "   2. Source 选择：Deploy from a branch"
echo "   3. Branch 选择：main / Folder: / (root)"
echo "   4. 点击 Save"
echo ""
read -p "完成后按回车继续..."

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "4️⃣  访问你的网站！"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "   🌐 https://$GITHUB_USER.github.io/openclaw-promo/"
echo ""
echo "   等待 1-2 分钟让 GitHub Pages 生效"
echo ""

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "📊 团队分享"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "分享模板："
echo ""
echo "🦞 兄弟们，我做了个 OpenClaw 推广网站！"
echo "https://$GITHUB_USER.github.io/openclaw-promo/"
echo ""
echo "5 分钟就能搭建好自己的 AI 助手，"
echo "我已经装了 14 个技能，每天自动给我推天气和新闻～"
echo ""
echo "试试不？有问题随时问我！"
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ 部署完成！"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
