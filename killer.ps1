reg add HKEY_LOCAL_MACHINE\system\CurrentControlSet\Services\UsoSvc /v start /t REG_DWORD /d 4 /f ; 
reg add HKEY_LOCAL_MACHINE\system\CurrentControlSet\Services\wuauserv /v start /t REG_DWORD /d 4 /f ; 
reg add HKEY_LOCAL_MACHINE\system\CurrentControlSet\Services\WaaSMedicSvc /v start /t REG_DWORD /d 4 /f ; 
sc.exe stop UsoSvc ;sc.exe stop wuauserv ;sc.exe stop WaaSMedicSvc ;
powershell -NoP  -Exec Bypass c:\users\$env:username\killer\checker.ps1
