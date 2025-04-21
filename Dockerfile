# Utiliser l'image officielle de Python
FROM python:3.9-slim

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier le fichier requirements.txt et installer les dépendances
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Copier tout le code source du projet dans le conteneur
COPY . /app/

# Exposer le port 8000 (utilisé par Django)
EXPOSE 8000

# Commande par défaut pour démarrer le serveur de développement Django
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
