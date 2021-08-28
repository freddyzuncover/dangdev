echo off
chcp 65001
cls
title Software Downloader
echo .
echo    ██████╗  █████╗ ███╗   ██╗ ██████╗ ██████╗ ███████╗██╗   ██╗
echo    ██╔══██╗██╔══██╗████╗  ██║██╔════╝ ██╔══██╗██╔════╝██║   ██║
echo    ██║  ██║███████║██╔██╗ ██║██║  ███╗██║  ██║█████╗  ██║   ██║
echo    ██║  ██║██╔══██║██║╚██╗██║██║   ██║██║  ██║██╔══╝  ╚██╗ ██╔╝
echo    ██████╔╝██║  ██║██║ ╚████║╚██████╔╝██████╔╝███████╗ ╚████╔╝ 
echo    ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚═════╝ ╚══════╝  ╚═══╝  
echo .
echo    Type number software to download:
echo    1) VS code
echo    2) Google drive for desktop
echo    3) Playit.gg 
set /p CH=
if %CH% == 1 (
    echo Downloading VS code ...
    curl --silent -O https://az764295.vo.msecnd.net/stable/3866c3553be8b268c8a7f8c0482c0c0177aa8bfa/VSCodeUserSetup-x64-1.59.1.exe
    echo Downloaded successfully!
    timeout 2
    exit
) else if %CH% == 2 (
    echo Downloading Google drive for desktop ...
    curl --silent -O https://dl.google.com/drive-file-stream/GoogleDriveSetup.exe
    echo Downloaded successfully!
    timeout 2
    exit
) else if %CH% == 3 (
    echo Downloading Playit.gg
    curl --silent -O https://playit.gg/downloads/playit-win_64-0.4.6.exe
    echo Downloaded successfully!
    timeout 2
    exit
)