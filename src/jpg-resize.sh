#!/bin/bash
#
# Smanjuje JPG slike.

for i in *.jpg; do echo $i; convert $i -quality 100 -resize 200 $i; done
