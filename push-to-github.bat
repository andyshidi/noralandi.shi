@echo off
cd /d C:\Users\huawei\NoraLandi.Shi

:: 设置 Git 用户信息
git config --global user.email "andy@example.com"
git config --global user.name "Andy Shi"

:: 移除主题的暂存
git rm --cached themes/hugo-PaperMod -r 2>nul

:: 添加 .gitignore
echo themes/hugo-PaperMod > .gitignore
git add .

:: 提交
git commit -m "Initial commit"

:: 添加远程仓库（如已存在则跳过）
git remote add origin https://github.com/andyshidi/noralandi.shi.git 2>nul

:: 推送到 GitHub
git push -u origin main

pause
