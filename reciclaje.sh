#!/bin/bash

	if [ $# -lt 1 ]; then
		echo "No se han introducido parámetros"
		exit 1
	fi

	if [ -d /home/usuario/basura ]; then
		echo "La basura ya existe"
	else
		mkdir /home/usuario/basura
	fi

	limit=$#
	cont=0

	while [ $cont -lt $limit ]; do
		if [ -f $1 ]; then
			mv $1 /home/usuario/basura
		elif [ -f /home/usuario/basura/$1 ]; then
			mv /home/usuario/basura/$1 .
		else
			echo "No existe el archivo $1"	
		fi
		
		shift
		let cont=$cont+1
		
	done
	
	echo "Se terminó la instrucción"
