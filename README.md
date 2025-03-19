# nginx-miniweb

nginx-miniweb ist eine einfache NGINX-Webserver-Implementierung in einem Docker-Container. Der Server stellt eine statische Website auf Port 8080 bereit und speichert Web- und Logdateien in lokalen Verzeichnissen.

## Project Structure

```
nginx-miniweb/
├── Dockerfile
├── html/
│   └── index.html   (or other website files)
└── logs/            (NGINX log files)
└── install.sh       (Installation script)
```

## Installation

Klone das Repository:

``` sh
    git clone https://github.com/Arkaizn/nginx-miniweb.git
```

Führe das Installationsskript im Verzeichnis aus aus:

``` sh
    ./nginx-miniweb/install.sh
```

Dies erstellt das Docker-Image und startet den Container.

Besuche die Webseite unter: http://localhost:8080

## Entfernen des Containers

Falls du den Container und das Image löschen möchtest, kannst du das delete.sh-Skript ausführen:

./delete.sh


## Projektstruktur - Dokumentation

### Dockerfile

Das Dockerfile definiert das Docker-Image für den Webserver. Es basiert auf dem offiziellen NGINX-Image und kopiert die HTML-Dateien sowie die NGINX-Konfigurationsdatei in den Container. Zudem wird der Port 8080 freigegeben und Volumes für Logs und Webseiten-Dateien definiert.

### install.sh

Das install.sh-Skript automatisiert den Installationsprozess. Es baut das Docker-Image aus dem Dockerfile, startet den Container mit den richtigen Port- und Volume-Einstellungen und stellt sicher, dass die Webseite unter http://localhost:8080 erreichbar ist.

### delete.sh

Das delete.sh-Skript dient zur vollständigen Deinstallation. Es stoppt den laufenden Container, löscht ihn, entfernt das zugehörige Docker-Image und bereinigt optional ungenutzte Docker-Volumes.

### nginx.conf

Die Datei nginx.conf ist die Konfigurationsdatei für den NGINX-Webserver. Sie legt fest, dass der Server auf Port 8080 läuft, welche Dateien als Standardindexseite verwendet werden und wo Logs gespeichert werden.

### index.html

Die Datei index.html ist eine beispielhafte statische Webseite, die im Webserver bereitgestellt wird. Diese Datei kann angepasst oder durch eigene HTML-Dateien ersetzt werden.

### html/

Dieses Verzeichnis enthält die HTML-Dateien, die vom Webserver bereitgestellt werden. Standardmäßig befindet sich hier die index.html, aber weitere Webseiten-Dateien können hinzugefügt 

### log/
In diesem Verzeichnis speichert NGINX seine Zugriff- und Fehlerprotokolle. Diese Dateien helfen bei der Fehleranalyse und ermöglichen eine Nachverfolgung von Zugriffen auf den Webserver.

## Fazit

Das Projekt nginx-miniweb bietet eine einfache Möglichkeit, einen statischen Webserver mit NGINX innerhalb eines Docker-Containers zu betreiben. Durch die Automatisierung mittels der Skripte install.sh und delete.sh wird die Verwaltung des Containers erheblich erleichtert. Die klare Projektstruktur ermöglicht eine einfache Anpassung der bereitgestellten Webseiten sowie der NGINX-Konfiguration. Dieses Setup eignet sich hervorragend für Testzwecke oder kleine Webprojekte, die ohne großen Aufwand gehostet werden sollen.