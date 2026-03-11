@echo off
cd /d C:\Users\huawei\NoraLandi.Shi

:: 删除所有可能的 git 相关文件
rmdir /s /q .git 2>nul
rmdir /s /q themes\hugo-PaperMod\.git 2>nul

:: 重新初始化
git init
git config --global user.email "andy@example.com"
git config --global user.name "Andy Shi"

:: 添加所有文件
git add .
git commit -m "Add blog with theme - fixed"

:: 设置远程仓库
git remote remove origin 2>nul
git remote add origin https://github.com/andyshidi/noralandi.shi.git

:: 强制推送
git push -u origin master --force

pause
