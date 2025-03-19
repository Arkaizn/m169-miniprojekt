#!/bin/bash

echo "Lösche die Log-Dateien von nginx-miniweb..."
rm ./logs/access.log
rm ./logs/error.log

# Schritt 1: Den Container 'nginx-miniweb' stoppen (falls er läuft)
echo "Stoppe den Container 'nginx-miniweb'..."
docker stop nginx-miniweb

# Schritt 2: Den Container 'nginx-miniweb' entfernen
echo "Entferne den Container 'nginx-miniweb'..."
docker rm nginx-miniweb

# Schritt 3: Das Image 'nginx-miniweb' entfernen
echo "Entferne das Image 'nginx-miniweb'..."
docker rmi -f nginx-miniweb

# Schritt 4: Optional, Volumes entfernen (falls genutzt)
echo "Entferne Volumes, die mit 'nginx-miniweb' verbunden sind..."
docker volume prune -f

# Schritt 5: Optional, benutzerdefinierte NGINX-Konfigurationen zurücksetzen (falls geändert)
# Falls du eine angepasste nginx.conf hast, kannst du sie hier zurücksetzen.
# Entkommentiere die folgende Zeile und passe den Pfad an, falls erforderlich:
# echo "Setze benutzerdefinierte NGINX-Konfiguration zurück..."
# rm -rf /pfad/zu/deiner/nginx.conf

echo "Die Umgebung von 'nginx-miniweb' wurde auf den Ausgangszustand zurückgesetzt."
