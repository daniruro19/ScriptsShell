#!/bin/bash

if [ $# -lt 2 ]; then
	echo "No se introdujeron suficientes parámetros"
	exit 1
fi

for i in $*
do
	if [ -f $1 ]; then
		lineas=`wc -l $1`
		palabras=`wc -w $1`
		bytes=`wc -c $1`
		caracteres=`wc -m $1`
		echo "Numero de lineas->$lineas"
		echo "Numero de palabras->$palabras"
		echo "Numero de bytes->$bytes"
		echo "Numero de caracteres->$caracteres"
		shift
	else
		echo "$1 No es un fichero" 
		shift
	fi
	echo "-----------------"
done

exit 1

