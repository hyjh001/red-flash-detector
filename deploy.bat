@echo off
REM 設定 Git 使用者資訊（只需執行一次）
git config --global user.name "hyjh001"
git config --global user.email "you@example.com"

REM 初始化 git 並推送到 GitHub
git init
git branch -M main
git remote add origin https://github.com/hyjh001/red-flash-detector.git
git add .
git commit -m "Initial commit for GitHub Pages"
git push -u origin main

REM 顯示提示
echo ===============================
echo ✅ 已完成部署推送！
echo 請到 https://github.com/hyjh001/red-flash-detector/settings/pages
echo 等待 1~2 分鐘後 Source 選項才會出現
echo ===============================
pause