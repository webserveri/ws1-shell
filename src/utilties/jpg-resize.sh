#!/bin/bash
#
# Resizes JPG images in current directory.

for i in *.jpg
do
  convert $i -resize 250 $i > /tmp/jpg-resize.log
done
