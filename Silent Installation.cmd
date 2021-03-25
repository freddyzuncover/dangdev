@ECHO OFF
curl --silent -O https://github.com/DangDev/software-dangdev/releases/download/Software/VSCode.exe
curl --silent -O https://github.com/DangDev/software-dangdev/releases/download/Software/OBS-Studio.exe
curl --silent -O https://github.com/DangDev/software-dangdev/releases/download/Software/winrar.exe
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
FOR %%i IN ("VSCode*.exe") DO Set FileName="%%i"
%FileName% /VERYSILENT
FOR %%i IN ("OBS*.exe") DO Set FileName="%%i"
%FileName% /VERYSILENT
FOR %%i IN ("winrar*.exe") DO Set FileName="%%i"
%FileName% /VERYSILENT
