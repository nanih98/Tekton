#! /bin/bash

echo 'Inicio copia seguridad contenido wordpress $(date +"%F")'

dir="/copiaseguridad/backups"
cd $dir
NOMBRE_DIRECTORIO="copiaseguridad_$(date +"%F")"
echo $NOMBRE_DIRECTORIO
RUTA="$dir/$NOMBRE_DIRECTORIO"
echo $RUTA

if [[ -d $RUTA ]] 
then
    echo "Ya existe el directorio"
else
    echo "NO existe el directorio"
        mkdir $RUTA
fi

cd /var/www/html/
echo "Inicializando backup del contenido wordpress"
tar -czf $RUTA'/contenidowp.tar.gz' .
echo "Backup finalizado"

# Limpiamos backups antiguos
find $dir -type d -mtime +5 | xargs -I {} echo {}
#find /path/to/files* -mtime +5 -exec rm {} \;
