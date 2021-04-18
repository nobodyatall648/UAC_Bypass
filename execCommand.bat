@ECHO OFF

powershell.exe -command "& invoke-webrequest -Uri 'https://eternallybored.org/misc/netcat/netcat-win32-1.12.zip' -Outfile $env:APPDATA\test\netcat.zip"