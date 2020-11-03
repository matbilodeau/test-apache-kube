#!/bin/bash

#echo '<!doctype html><html><head><meta charset="utf-8"><title>Où suis-je</title></head><body><h1>Voici un test Kubernetes</h1> <p>Vous êtes dans le pod ' |tee /var/www/html/index2.html && echo $HOSTNAME | tee -a /var/www/html/index2.html && echo '</p></body></html>' | tee -a /var/www/html/index2.html

/usr/sbin/apache2ctl -D FOREGROUND
