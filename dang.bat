echo off
chcp 65001
cls
title Auto Create Server

echo Installing Java 16
curl --silent -L https://github.com/DangDev/dangdev/releases/download/Minecraft/jdk-16.0.2_windows-x64_bin.exe > jdk-16.0.2_windows-x64_bin.exe
jdk-16.0.2_windows-x64_bin.exe /s
set JAVA_HOME=C:\Program Files\Java\jdk-16.0.2
set Path=%JAVA_HOME%\bin;%Path%
echo Java 16 activated.

echo Installing Google Drive for Desktop
curl --silent -O https://dl.google.com/drive-file-stream/GoogleDriveSetup.exe
GoogleDriveSetup.exe /s

echo G:> jump.bat
echo cd "My Drive">> jump.bat
echo cd "Minecraft-server">> jump.bat
echo java -Xmx3070M -Xms3070M -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=20 -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -Dusing.aikars.flags=https://mcflags.emc.gs -Daikars.new.flags=true -jar server.jar nogui>> jump.bat
start jump.bat

echo Installing Playit.gg
curl --silent -O https://playit.gg/downloads/playit-win_64-0.4.6.exe
playit-win_64-0.4.6.exe
PAUSE
