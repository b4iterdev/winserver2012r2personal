# Windows Server 2012 R2 Personal Setup Script by b4iterdev
Windows Server 2012 R2 Persona Setup Script for b4iterdev

#Usage

Run this command in powershell:
```
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Invoke-WebRequest -OutFile C:\setup.bat -Uri https://github.com/b4iterdev/winserver2012r2personal/raw/main/setup.bat
C:\setup.bat
```
