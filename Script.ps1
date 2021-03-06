# creator: Skyfay
# Last edit: 29.03.2022

cls

while($true) {
$start = Read-Host "Moechtest du ein NIC-TEAM erstellen (1) oder ein NIC-TEAM loeschen (2) ?"

if ($start -eq 1) {
while($true) {
Get-NetAdapter

$howmany = Read-Host "Wie viele Netzwerk Schnittstellen moechtest du zum NIC-TEAM hinzufuegen (2-4) ?"

if ($howmany -eq 2) {
cls
while($true) {
Get-NetAdapter
$network1 = Read-Host "Wie lautet die erste Netzwerk Schnittstelle?"
$network2 = Read-Host "Wie lautet die erste Netzwerk Schnittstelle?"
$nicname = Read-Host "Wie soll das Nic Teaming heissen?"
New-VMSwitch -Name $nicname -NetAdapterName "$network1","$network2" -EnableEmbeddedTeaming $true
Set-VMSwitchTeam -Name $nicname -LoadBalancingAlgorithm Dynamic
cls
if ($error.Count -eq 0) {
echo "Das NIC-Teaming wurde erfolgreich durchgefuehrt, Glueckwunsch! Dieses Fenster schliesst sich automatisch."
Start-Sleep -s 6
exit
break
}
else {
    cls
    echo "Hmm, das hat nicht funktioniert. Bitte achte auf deine Rechtschreibung und versuche es erneut"
}
}
}
if ($howmany -eq 3) {
cls
while($true) {
Get-NetAdapter
$network1 = Read-Host "Wie lautet die erste Netzwerk Schnittstelle?"
$network2 = Read-Host "Wie lautet die erste Netzwerk Schnittstelle?"
$network3 = Read-Host "Wie lautet die erste Netzwerk Schnittstelle?"
$nicname = Read-Host "Wie soll das Nic Teaming heissen?"
New-VMSwitch -Name $nicname -NetAdapterName "$network1","$network2","$network3" -EnableEmbeddedTeaming $true
Set-VMSwitchTeam -Name $nicname -LoadBalancingAlgorithm Dynamic
cls
if ($error.Count -eq 0) {
echo "Das NIC-Teaming wurde erfolgreich durchgefuehrt, Glueckwunsch! Dieses Fenster schliesst sich automatisch."
Start-Sleep -s 6
exit
break
}
else {
    cls
    echo "Hmm, das hat nicht funktioniert. Bitte achte auf deine Rechtschreibung und versuche es erneut"
    echo "'n"
}
}
}
if ($howmany -eq 4) {
cls
Get-NetAdapter
while($true) {
$network1 = Read-Host "Wie lautet die erste Netzwerk Schnittstelle?"
$network2 = Read-Host "Wie lautet die erste Netzwerk Schnittstelle?"
$network3 = Read-Host "Wie lautet die erste Netzwerk Schnittstelle?"
$network4 = Read-Host "Wie lautet die erste Netzwerk Schnittstelle?"
$nicname = Read-Host "Wie soll das Nic Teaming heissen?"
New-VMSwitch -Name $nicname -NetAdapterName "$network1","$network2","$network3","$network4" -EnableEmbeddedTeaming $true
Set-VMSwitchTeam -Name $nicname -LoadBalancingAlgorithm Dynamic
cls
if ($error.Count -eq 0) {
echo "Das NIC-Teaming wurde erfolgreich durchgefuehrt, Glueckwunsch! Dieses Fenster schliesst sich automatisch."
Start-Sleep -s 6
exit
break
}
else {
    cls
    echo "Hmm, das hat nicht funktioniert. Bitte achte auf deine Rechtschreibung und versuche es erneut"
}
}
}
else {
    cls
    echo "Bitte gebe einen Wert von 2-4 ein!"
}
}
}
if ($start -eq 2) {
while($true) {
Get-NetAdapter
$nicteaming = Read-Host "Welches NIC-Teaming moechtest du loeschen?"
Remove-VMSwitch $nicteaming
cls
if ($error.Count -eq 0) {
echo "Das NIC-Teaming wurde erfolgreich geloescht, Glueckwunsch! Dieses Fenster schliesst sich automatisch."
Start-Sleep -s 6
exit
break
}
else {
     cls
     echo "Das war wohl nix! Bitte gib einen richtigen Nic-Teaming Adapter an..."
}
}
}
else {
    cls
    echo "Gibt bitte einen in der Frage genannten Wert ein!"
}
}
