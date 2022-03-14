#!/bin/bash

PS3="Opcion:"
select i in Listado Quien Salir
do
	case $i in
		Listado) ls -l ;;
		Quien) who ;;
		Salir) exit 0;;
		*) echo Ehh?;;
	esac
done
