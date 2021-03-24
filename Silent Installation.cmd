@ECHO OFF
Color 0B
@cls
echo.
echo.
echo.
@echo    //////////////////////////////////////////////////////////////
@echo    /                                                            /
@echo    /               Visual studio is installing...               /
@echo    /                                                            /
@echo    /                       Please wait...                       /
@echo    /                                                            /
@echo    /                   Dont close this window                   /
@echo    /                                                            /
@echo    //////////////////////////////////////////////////////////////
@echo off
FOR %%i IN ("VSCodeUserSetup*.exe") DO Set FileName="%%i"
%FileName% /VERYSILENT
