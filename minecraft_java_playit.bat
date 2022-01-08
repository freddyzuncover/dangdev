echo off
chcp 65001
cls
title Auto Create Server

echo Installing Java 17
curl --silent -L https://github.com/DangDev/dangdev/releases/download/Minecraft/zulu17.30.15-ca-jdk17.0.1-win_x64.msi > jdk17.msi
msiexec /i jdk17.msi /quiet /qn /norestart
set JAVA_HOME=C:\Program Files\Java\jdk-16.0.2
set Path=%JAVA_HOME%\bin;%Path%
echo Java 17 activated.

echo Installing Google Drive for Desktop
curl --silent -O https://dl.google.com/drive-file-stream/GoogleDriveSetup.exe
GoogleDriveSetup.exe /s

start G:\"My Drive"\"Minecraft-server"\run.bat

echo Installing Playit.gg
curl -s -O https://playit.gg/downloads/playit-win_64-0.4.6.exe
playit-win_64-0.4.6.exe
PAUSE
