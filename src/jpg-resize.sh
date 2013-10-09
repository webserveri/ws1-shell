#!/bin/bash
#
# Smanjuje JPG slike.

for i in *.jpg; do convert $i -quality 100 -resize 200 $i; done
