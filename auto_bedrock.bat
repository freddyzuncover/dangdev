echo off
chcp 65001
cls
title Auto Create Server

echo Installing Google Drive for Desktop
curl --silent -O https://dl.google.com/drive-file-stream/GoogleDriveSetup.exe
GoogleDriveSetup.exe /s

echo G:> bedrock.bat
echo cd "My Drive">> bedrock.bat
echo cd "Minecraft-Bedrock">> bedrock.bat
echo start start.cmd>> bedrock.bat
start bedrock.bat

echo Installing Playit.gg
curl --silent -O https://playit.gg/downloads/playit-win_64-0.4.6.exe
playit-win_64-0.4.6.exe
PAUSE
