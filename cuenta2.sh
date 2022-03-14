
#!/bin/bash

if [ $# != 3 ]; then
	echo "Este programa requiere tres argumentos"
	exit 1

fi

if [ $2 -gt $3 ]; then
	echo "El primer numero debe ser menor que el primero"
	exit 1
else
	cont=$2
	limit=$3
	
	while [ $cont -lt $limit ]; do
		if [ -d $1$cont ]; then
			echo "Ya existe el subdirectorio"
			let cont=$cont+1
		else
			mkdir $1$cont
			let cont=$cont+1
		fi
	done
fi

echo "Final del programa"
