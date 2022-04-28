@ECHO OFF
Color 0B
@cls
echo.
echo.
echo.
@echo    //////////////////////////////////////////////////////////////
@echo    /                                                            /
@echo    /                 Application is installing...               /
@echo    /                                                            /
@echo    /                       Please wait...                       /
@echo    /                                                            /
@echo    /                   Dont close this window                   /
@echo    /                                                            /
@echo    //////////////////////////////////////////////////////////////
@echo off
curl -L -o Parsec.exe https://builds.parsecgaming.com/package/parsec-windows.exe
Parsec.exe
curl -L -o VAC.exe https://github.com/DangDev/dangdev/releases/download/Apps/VACSetup.exe
VAC.exe
curl -L -o Steam.exe https://cdn.cloudflare.steamstatic.com/client/installer/SteamSetup.exe
Steam.exe
curl -L -o Ubisoft.exe https://github.com/DangDev/dangdev/releases/download/Apps/UbisoftConnectInstaller.exe
Ubisoft.exe
curl -L -o EpicGames.msi https://github.com/DangDev/dangdev/releases/download/Apps/EpicInstaller-13.3.0.msi
EpicGames.msi
