@echo off
chcp 65001 >nul
cd /d %~dp0
echo ========================================
echo 🚀 Git 一键提交 "&" 推送脚本 by ChatGPT 😻
echo ========================================
echo.

:: 检查 Git 是否安装
where git >nul 2>nul
if %errorlevel% neq 0 (
    echo ❌ 未检测到 Git，请先安装 Git！
    pause
    exit /b
)

:: 切换到仓库目录
cd /d %~dp0

:: 拉取最新代码，防止冲突
echo 🔄 正在拉取最新代码...
git pull origin master


:: 添加所有更改

echo ➕ 添加本地更改

git add .

:: 获取当前时间作为提交信息
for /f "tokens=2 delims==" %%i in ('wmic os get localdatetime /value ^| find "="') do set datetime=%%i
set commit_message=🐾 更新于 %datetime:~0,4%-%datetime:~4,2%-%datetime:~6,2% %datetime:~8,2%:%datetime:~10,2%

:: 提交更改
echo 📝 提交更改：%commit_message%
git commit -m "%commit_message%"

:: 推送到远程仓库
echo 🚀 推送到 GitHub...
git push origin master

echo ✅ 推送完成！✨
pause