@echo off
REM 設定 GitHub 帳號與 Repo 名稱
set GITHUB_USER=hyjh001
set REPO_NAME=red-flash-web

REM 變更工作目錄到本機專案資料夾
cd /d "%~dp0"

REM 初始化 Git（若尚未初始化）
if not exist ".git" (
    echo 初始化 Git 倉庫...
    git init
    git remote add origin https://github.com/%GITHUB_USER%/%REPO_NAME%.git
    git branch -M main
)

REM 加入全部檔案並提交
echo 加入檔案並提交中...
git add .
git commit -m "更新網頁版本"
git push -u origin main

REM 顯示完成訊息
echo.
echo ✅ 已推送至 GitHub！請稍後前往 GitHub Pages 檢查部署：
echo    https://%GITHUB_USER%.github.io/%REPO_NAME%/
pause