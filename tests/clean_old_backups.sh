#! /bin/bash

dir="/copiaseguridad/backups"
find $dir -type f -mtime +1 | xargs -I {} ls -ltrah {}