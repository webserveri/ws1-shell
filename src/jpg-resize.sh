#!/bin/bash
#
# Smanjuje JPG slike u trenutnom direktorijumu.

for i in *.jpg; do convert $i -resize 200 $i 2> /dev/null; done
