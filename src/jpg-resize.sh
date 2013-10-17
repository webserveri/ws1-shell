#!/bin/bash
#
# Smanjuje JPG slike.

for i in *.jpg; do convert $i -resize 200 $i 2> /dev/null; done
