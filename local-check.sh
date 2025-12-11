#!/bin/bash
# 本地模拟 GitHub Actions 检查

echo "========================================="
echo "1. 清理构建缓存..."
echo "========================================="
rm -rf _site .jekyll-cache

echo ""
echo "========================================="
echo "2. 运行 Prettier 检查..."
echo "========================================="
npx prettier . --check

echo ""
echo "========================================="
echo "3. 构建 Jekyll 网站..."
echo "========================================="
JEKYLL_ENV=production bundle exec jekyll build

echo ""
echo "========================================="
echo "4. 检查链接（仅本地链接）..."
echo "========================================="
# 需要安装 lychee: brew install lychee
# lychee --offline --verbose --no-progress '_site/**/*.html'

echo ""
echo "========================================="
echo "完成！如果上面都通过，GitHub Actions 应该也能通过"
echo "========================================="
