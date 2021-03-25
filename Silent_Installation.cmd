@ECHO OFF
curl --silent -O https://github-releases.githubusercontent.com/346564865/4ef75e00-82c3-11eb-8f61-594f3ac5b46c?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIWNJYAX4CSVEH53A%2F20210325%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20210325T150552Z&X-Amz-Expires=300&X-Amz-Signature=4a492d9afd2b700af6a60b76ec88c5d812f21ccbd7b83d7b791a83f5a6e82a4c&X-Amz-SignedHeaders=host&actor_id=54974645&key_id=0&repo_id=346564865&response-content-disposition=attachment%3B%20filename%3DVSCode.exe&response-content-type=application%2Foctet-stream
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
