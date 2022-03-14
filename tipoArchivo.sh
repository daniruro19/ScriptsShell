#!/bin/bash

if [ $# -lt 1 ]; then
	echo "No se introdujo parámetro"
	exit 1
fi

if [ -e $1 ]; then
	if [ -f $1 ]; then
		echo "El parámetro pasado es un fichero, de tipo" 
		file $1
	elif [ -d $1 ]; then
		echo "El parámetro pasado es un directorio"
	fi
else
	echo "El parámetro pasado no existe"
	exit 1
fi
