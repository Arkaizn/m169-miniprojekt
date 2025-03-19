# NGINX als Basis-Image verwenden
FROM nginx:latest

# Kopieren der HTML-Dateien in das Webserver-Verzeichnis
COPY ./html /usr/share/nginx/html

# Konfigurieren des NGINX-Ports
EXPOSE 8080

# Setze die Konfiguration von NGINX
COPY ./nginx.conf /etc/nginx/nginx.conf

# Volumes für Webseitendateien und Logs
VOLUME ["/usr/share/nginx/html", "/var/log/nginx"]

# Standard Kommando
CMD ["nginx", "-g", "daemon off;"]
