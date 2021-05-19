#! /bin/bash

echo 'Inicio copia seguridad contenido wordpress'

dir="/copiaseguridad/backups"
cd $dir
#mkdir test2_$(date +"%F_%T")
NOMBRE_DIRECTORIO="copiaseguridad_$(date +"%F")"
echo $NOMBRE_DIRECTORIO
RUTA="$dir/$NOMBRE_DIRECTORIO"
echo $RUTA