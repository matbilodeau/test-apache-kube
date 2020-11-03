# Image de base
FROM ubuntu:16.04

#Installation d'apache
RUN apt-get update --fix-missing
RUN apt-get install -y apache2

# Add files
ADD index.html /var/www/html/
ADD entrypoint.sh /
RUN echo '<!doctype html><html><head><meta charset="utf-8"><title>Où suis-je</title></head><body><h1>Voici un test Kubernetes</h1> <p>Vous êtes ici ' |tee /var/www/html/index2.html &>


# Identifie quelle commande rouler
ENTRYPOINT  ["/bin/bash", "/entrypoint.sh"]
