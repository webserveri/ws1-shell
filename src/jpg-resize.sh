#!/bin/bash
#
# Smanjuje JPG slike.

for i in *.jpg; do convert $i -resize 200 $i; done
