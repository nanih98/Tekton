#! /bin/bash

# Restaurar backup de wordpress y mariadb
echo ${1}
dir="/copiaseguridad/backups/copiaseguridad_${1}"
#rm -rf /var/www/html

cd $dir
echo $dir
echo -e "Recuperando backup de wordpress con fecha ${1}"
tar -xf contenidowp.tar.gz -C /tmp/wordpress # /var/www/html