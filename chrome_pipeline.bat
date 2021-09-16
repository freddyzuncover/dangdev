title Azure-Auto-Region

echo Setup Profile...
tzutil /s "SE Asia Standard Time" >nul
Reg Add "HKCU\SOFTWARE\Microsoft\Windows\DWM" /v ColorPrevalence /t REG_DWORD /d 1 /f >nul
Reg Add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v ColorPrevalence /t REG_DWORD /d 1 /f >nul
sc start audiosrv >nul

echo Finished!
@echo off
del /f "C:\Users\Public\Desktop\Epic Games Launcher.lnk" > out.txt 2>&1
net config server /srvcomment:"DiemQuynh" > out.txt 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /V EnableAutoTray /T REG_DWORD /D 0 /F > out.txt 2>&1
net user administrator DiemQuynh1 /add >nul
net localgroup administrators administrator /add >nul
net user VssAdministrator DiemQuynh1 >nul

curl -o "C:\Users\Public\Desktop\Fast Config VPS.exe" https://raw.githubusercontent.com/DangDev/dangdev/main/software/FastConfigVPS_v2.3.exe > out.txt 2>&1
curl -o "C:\Users\Public\Desktop\EVKey Vietnamese Keyboard.exe" https://raw.githubusercontent.com/DangDev/dangdev/main/software/EVKey64.exe > out.txt 2>&1
curl -o "C:\Users\Public\Desktop\Enable Session notification.vbs" https://raw.githubusercontent.com/DangDev/dangdev/main/Session.vbs > out.txt 2>&1
curl -o "C:\Users\Public\Desktop\swd.bat" https://raw.githubusercontent.com/DangDev/dangdev/main/swd.bat > out.txt 2>&1
curl -o "C:\Users\Public\Desktop\autoserver.bat" https://raw.githubusercontent.com/DangDev/dangdev/main/dang.bat > out.txt 2>&1
curl -o "C:\Users\Public\Desktop\auto_bedrock.bat" https://raw.githubusercontent.com/DangDev/dangdev/main/auto_bedrock.bat > out.txt 2>&1
diskperf -Y >nul

sc config Audiosrv start= auto >nul
ICACLS C:\Windows\Temp /grant administrator:F >nul
ICACLS C:\Windows\installer /grant VssAdministrator:F >nul
ICACLS C:\Windows\Temp /grant VssAdministrator:F >nul
ICACLS C:\Windows\installer /grant administrator:F >nul
