#! /bin/bash

dir="/copiaseguridad/backups"
find $dir -type f -mtime +5 | xargs -I {} ls -ltrah {}