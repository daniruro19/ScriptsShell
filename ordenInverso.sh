#!/bin/bash

if [ $# -lt 1 ]; then
	echo "No se introdujeron suficientes parámetros"
	exit 1
fi

cadena=""

for i in $*
do
	cadena="$1 $cadena"
	shift
done

for index in ${!cadena[*]}
do
	echo ${cadena[$index]}
done
