title Azure-Auto-Region

echo Setup Profile...
tzutil /s "SE Asia Standard Time" >nul
Reg Add "HKCU\SOFTWARE\Microsoft\Windows\DWM" /v ColorPrevalence /t REG_DWORD /d 1 /f >nul
Reg Add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v ColorPrevalence /t REG_DWORD /d 1 /f >nul
sc start audiosrv >nul
Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled False
& {$P = $env:TEMP + '\chromeremotedesktophost.msi'; Invoke-WebRequest 'https://dl.google.com/edgedl/chrome-remote-desktop/chromeremotedesktophost.msi' -OutFile $P; Start-Process $P -Wait; Remove-Item $P}
& {$P = $env:TEMP + '\chrome_installer.exe'; Invoke-WebRequest 'https://dl.google.com/chrome/install/latest/chrome_installer.exe' -OutFile $P; Start-Process -FilePath $P -Args '/install' -Verb RunAs -Wait; Remove-Item $P}


echo Finished!
@echo off
del /f "C:\Users\Public\Desktop\Epic Games Launcher.lnk" > out.txt 2>&1
net config server /srvcomment:"VanDang" > out.txt 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /V EnableAutoTray /T REG_DWORD /D 0 /F > out.txt 2>&1
net user administrator VanDang1 /add >nul
net localgroup administrators administrator /add >nul
net user VssAdministrator VanDang1 >nul
echo User: Administrator
echo Pass: [Secret]
curl -o "C:\Users\Public\Desktop\Fast Config VPS.exe" https://raw.githubusercontent.com/DangDev/dangdev/main/software/FastConfigVPS_v2.3.exe > out.txt 2>&1
curl -o "C:\Users\Public\Desktop\EVKey Vietnamese Keyboard.exe" https://raw.githubusercontent.com/DangDev/dangdev/main/software/EVKey64.exe > out.txt 2>&1
curl -o "C:\Users\Public\Desktop\Enable Session notification.vbs" https://raw.githubusercontent.com/DangDev/dangdev/main/Session.vbs > out.txt 2>&1
curl -o "C:\Users\Public\Desktop\telebit.bat" https://raw.githubusercontent.com/DangDev/dangdev/main/telebit.bat > out.txt 2>&1
diskperf -Y >nul

sc config Audiosrv start= auto >nul
ICACLS C:\Windows\Temp /grant administrator:F >nul
ICACLS C:\Windows\installer /grant VssAdministrator:F >nul
ICACLS C:\Windows\Temp /grant VssAdministrator:F >nul
ICACLS C:\Windows\installer /grant administrator:F >nul


ping -n 99999999999999999999999999999999 10.10.10.10 >nul
