$p = pwd
start-process -verb runas powershell -argumentlist "mkdir c:\Users\$env:username\killer ;cp $p\kill.ps1, $p\killer.ps1, $p\kill.bat, $p\checker.ps1  c:\Users\$env:username\killer\ ;cp $p\checker.bat ,$p\kill.bat c:\Users\$env:username\desktop\ ;reg add 'HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run' /v killer /t REG_SZ /d 'C:\Users\$env:username\killer\kill.bat'"
