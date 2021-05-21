#! /bin/bash

dir="/copiaseguridad/backups/*"
find $dir -type d -mmin +1 | xargs -I {} ls -ltrah {}

#find $dir -type d -mmin +1 | xargs -I {} ls -ltrah {}