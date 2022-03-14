#!/bin/bash

if [ $# -lt 1 ]; then
	echo "No se han introducido parámetros"
	exit 1
fi

if [ -f $1 ]; then
	cat $1 | more
else
	echo "El parámetro introducido no es un fichero"
	exit 1
fi

