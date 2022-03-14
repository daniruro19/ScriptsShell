#!/bin/bash

if [ $# -lt 2 ]; then
	echo "No se introdujeron suficientes parámetros"
	exit 1
fi

if [ -d $1 ]; then
	busqueda=`find . -type f -name $2`
	echo "Ruta del archivo->$busqueda"

else
	echo "$1 no es un directorio"
fi
