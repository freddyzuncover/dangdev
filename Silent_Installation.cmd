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
FOR %%i IN ("VSCode*.exe") DO Set FileName="%%i"
%FileName% /VERYSILENT
