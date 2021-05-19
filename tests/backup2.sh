#! /bin/bash

echo 'Inicio copia seguridad base de datos wordpress'

dir="/opt/app-root/src/copiaseguridad/backups"
cd $dir
#mkdir test2_$(date +"%F_%T")
NOMBRE_DIRECTORIO="copiaseguridad_$(date +"%F")"
echo $NOMBRE_DIRECTORIO
RUTA="$dir/$NOMBRE_DIRECTORIO"
echo $RUTA

if [[ -d $RUTA ]] 
then
    echo "Ya existe el directorio"
else
    echo "NO existe el directorio"
        mkdir $NOMBRE_DIRECTORIO
fi

cd $RUTA
echo "Inicio copia seguridad bbdd"
mysqldump -alv -u admin -padmin -h localhost --add-drop-database --no-create-db --databases wordpress > dumpBaseDatos.sql
echo "Fin copia seguridad bbdd"