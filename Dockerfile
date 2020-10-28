#Image de base
FROM ubuntu:18.04

#Installation d'apache
RUN apt-get update 
RUN apt-get install -y apache2 
RUN apt-get install -y curl

# Add wordpress files
ADD index.html /var/www/html/
ADD entrypoint.sh /

#EXPOSE 460
# Identifie quelle commande rouler
ENTRYPOINT  ["/bin/bash", "/entrypoint.sh"]
