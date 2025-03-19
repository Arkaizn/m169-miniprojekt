#!/bin/bash

# Erstellen des Docker-Images aus dem Dockerfile im Verzeichnis 'nginx-miniweb'
echo "Erstelle das Docker-Image 'nginx-miniweb'..."
docker build -t nginx-miniweb ./nginx-miniweb/

# Starten des Docker-Containers aus dem erstellten Image
echo "Starte den Docker-Container 'nginx-miniweb'..."

# -d: Hintergrundmodus (Container läuft im Hintergrund)
# -p 8080:8080: Port 8080 des Hosts wird auf Port 8080 im Container gemappt
# --name nginx-miniweb: Der Container erhält den Namen 'nginx-miniweb'
# -v $(pwd)/nginx-miniweb/html:/usr/share/nginx/html: Lokales 'html'-Verzeichnis wird in das HTML-Verzeichnis des Containers gemountet
# -v $(pwd)/nginx-miniweb/logs:/var/log/nginx: Lokales 'logs'-Verzeichnis wird in das Log-Verzeichnis des Containers gemountet
docker run -d -p 8080:8080 --name nginx-miniweb -v $(pwd)/nginx-miniweb/html:/usr/share/nginx/html -v $(pwd)/nginx-miniweb/logs:/var/log/nginx nginx-miniweb

# Hinweis für den Nutzer, dass der Container läuft
echo "Der Docker-Container 'nginx-miniweb' läuft nun. Die Webseite ist unter http://localhost:8080/ erreichbar."
