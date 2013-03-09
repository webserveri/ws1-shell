#!/bin/sh
# SKRIPTA ZA PROMENU VELIČINE JPG SLIKA
# Milutin Gavrilović (hightech) @ 2013

for i in *.jpg; do echo "$i"; convert "$i" -quality 95 -resize 200x "$i"; done
