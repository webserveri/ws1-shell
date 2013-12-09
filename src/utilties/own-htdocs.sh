#!/bin/bash
#
# Owns htdocs by `www-data` group and removes backup files.

htdocs="/path/to/htdocs"

touch $htdocs/take.own

chown -R www-data:www-data $htdocs
rm -f $htdocs/scripts/*~
sleep 5

rm -f $htdocs/take.own