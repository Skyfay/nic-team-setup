# nic-team-setup
A Powershell Script in German to create a NIC-TEAM with a Virtual VMSwitch.

**Voraussetzung:**
- Min. Windows Server 2012 R2 bis 2022+ muss installiert sein.
- Hyper-V muss installiert sein.
- Internet Verbindung, wenn Ihr direkt die .bat Datei verwenden wollt.
- Es darf noch kein NIC-TEAM oder einen Virtuallen Adapter erstellt worden sein.
  Falls es der Fall war, löschen und in den Netzwerk Adapter Optionen überprüfen, dass ganz unten der Hacken bei Hyper-V nicht gesetzt ist!

**How to use?**
1. Laden Sie das .bat File unter Releases herunter. 
2. Vermutlich warnt der Browser oder das Antiviren Programm, das Script muss freigegeben werden.
3. Nach dem Ausführen der Datei startet das Script. 
4. Es muss eine Internet Verbindung vorhanden sein, weil die Datei direkt von Github abgerufen wird.

**Was kann das Script?**
- Erstellen von einem NIC-Teaming.
- Löschen von NIC-Teamings.

**Limits?**
- Aktuell können nur max. 4 Netzwerk Anschlüsse zum Teaming hinzugefügt werden.
