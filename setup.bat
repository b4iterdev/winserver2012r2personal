@echo off
rem Run script as administrator
set "params=%*"
cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B )
powershell -command "Set-ExecutionPolicy -Force -Scope CurrentUser -ExecutionPolicy Bypass"
rem Change administrator password
net user Administrator b4iterdev1111@
mkdir C:\Bginfo\
mkdir C:\Temp\
powershell
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls, [Net.SecurityProtocolType]::Tls11, [Net.SecurityProtocolType]::Tls12, [Net.SecurityProtocolType]::Ssl3
[Net.ServicePointManager]::SecurityProtocol = "Tls, Tls11, Tls12, Ssl3"
Invoke-WebRequest -OutFile C:\Bginfo\bginfo.bgi -Uri https://github.com/b4iterdev/winserver2012r2personal/raw/main/bginfo.bgi
Invoke-WebRequest -OutFile C:\Bginfo\bginfo.zip -Uri https://download.sysinternals.com/files/BGInfo.zip
Expand-Archive C:\Bginfo\bginfo.zip C:\Bginfo
C:\Bginfo\Bginfo64.exe "C:\Bginfo\bginfo.bgi" /timer 0
Invoke-WebRequest -OutFile C:\Temp\WS2012R2Optimisations.ps1 -Uri https://github.com/b4iterdev/winserver2012r2personal/raw/main/WS2012R2Optimisations.ps1
C:\Temp\WS2012R2Optimisations.ps1
pause
