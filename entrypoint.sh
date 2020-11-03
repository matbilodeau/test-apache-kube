#!/bin/bash

#echo '<!doctype html><html><head><meta charset="utf-8"><title>Où suis-je</title></head><body><h1>Voici un test Kubernetes</h1> <p>Vous êtes dans le pod ' |tee /var/www/html/index2.ht>

/usr/sbin/apache2ctl -D FOREGROUND
