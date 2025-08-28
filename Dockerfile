# Dockerfile
# Basis-Image für Python
FROM python:3.9-slim

# Setzt das Arbeitsverzeichnis im Container
WORKDIR /app

# Kopiert die requirements-Datei und installiert die Abhängigkeiten
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Kopiert den Rest des Anwendungscodes
COPY . .

# Definiert den Befehl zum Starten der Anwendung
CMD ["python", "app.py"]