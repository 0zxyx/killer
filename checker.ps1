if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) { Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs; exit }
$Usosvc = sc.exe query UsoSvc ; $wuauserv = sc.exe query wuauserv ;$WaaSMedicSvc = sc.exe query WaaSMedicSvc ;$1 = $Usosvc | Select-String State ;$2 = $wuauserv  | Select-String State ; $3 = $WaaSMedicSvc | Select-String State ;
$Usosvc = sc.exe qc UsoSvc ; $wuauserv = sc.exe qc wuauserv ;$WaaSMedicSvc = sc.exe qc WaaSMedicSvc ;$4 = $Usosvc | Select-String Start_Type ;$5 = $wuauserv  | Select-String Start_Type ; $6 = $WaaSMedicSvc | Select-String Start_Type ;
echo $1 $2 $3 "`n" $4 $5 $6
sleep 3;
