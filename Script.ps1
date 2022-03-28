cls
cls

while($true) {
$start = Read-Host "Möchtest du ein NIC-TEAM erstellen (1) oder ein NIC-TEAM löschen (2) ?"

if ($start -eq 1) {

Get-NetAdapter

$howmany = Read-Host "Wie viele Netzwerk Schnittstellen möchtest du zum NIC-TEAM hinzufügen (2-4) ?"

if ($howmany -eq 2) {
cls
Get-NetAdapter
$network1 = Read-Host "Wie lautet die erste Netzwerk Schnittstelle?"
$network2 = Read-Host "Wie lautet die erste Netzwerk Schnittstelle?"
$nicname = Read-Host "Wie soll das Nic Teaming heissen?"
New-VMSwitch -Name $nicname -NetAdapterName "$network1","$network2" -EnableEmbeddedTeaming $true
Set-VMSwitchTeam -Name $nicname -LoadBalancingAlgorithm Dynamic
cls
if ($error.clear()) {
echo "Das NIC-Teaming wurde erfolgreich durchgeführt, Glückwunsch! Dieses Fenster schliesst sich automatisch."
Start-Sleep -s 6
break
}
else {
}
}
if ($howmany -eq 3) {
cls
Get-NetAdapter
$network1 = Read-Host "Wie lautet die erste Netzwerk Schnittstelle?"
$network2 = Read-Host "Wie lautet die erste Netzwerk Schnittstelle?"
$network3 = Read-Host "Wie lautet die erste Netzwerk Schnittstelle?"
$nicname = Read-Host "Wie soll das Nic Teaming heissen?"
New-VMSwitch -Name $nicname -NetAdapterName "$network1","$network2","$network3" -EnableEmbeddedTeaming $true
Set-VMSwitchTeam -Name $nicname -LoadBalancingAlgorithm Dynamic
cls
if ($error.clear()) {
echo "Das NIC-Teaming wurde erfolgreich durchgeführt, Glückwunsch! Dieses Fenster schliesst sich automatisch."
Start-Sleep -s 6
break
}
else {
}
}
if ($howmany -eq 4) {
cls
Get-NetAdapter
$network1 = Read-Host "Wie lautet die erste Netzwerk Schnittstelle?"
$network2 = Read-Host "Wie lautet die erste Netzwerk Schnittstelle?"
$network3 = Read-Host "Wie lautet die erste Netzwerk Schnittstelle?"
$network4 = Read-Host "Wie lautet die erste Netzwerk Schnittstelle?"
$nicname = Read-Host "Wie soll das Nic Teaming heissen?"
New-VMSwitch -Name $nicname -NetAdapterName "$network1","$network2","$network3","$network4" -EnableEmbeddedTeaming $true
Set-VMSwitchTeam -Name $nicname -LoadBalancingAlgorithm Dynamic
cls
if ($error.clear()) {
echo "Das NIC-Teaming wurde erfolgreich durchgeführt, Glückwunsch! Dieses Fenster schliesst sich automatisch."
Start-Sleep -s 6
break
}
else {
}
}
}
while($true) {
if ($start -eq 2) {
Get-NetAdapter
$nicteaming = Read-Host "Welches NIC-Teaming möchtest du löschen?"
Remove-VMSwitch $nicteaming
if ($error.clear()) {
echo "Das NIC-Teaming wurde erfolgreich gelöscht, Glückwunsch! Dieses Fenster schliesst sich automatisch."
Start-Sleep -s 6
break
}
else {
     cls
     echo "Das war wohl nix! Bitte gib einen richtigen Nic-Teaming Adapter an..."
}
}
else {
    cls
    echo "Gibt bitte einen in der Frage genannten Wert ein!"
}
}
}
