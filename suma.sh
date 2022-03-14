#!/bin/bash

suma=0

saberNumero='^[0-9]+$'

read -p "Introduzca el numero que quiera sumar: " num

for i in *
do
	if [[ $num =~ $saberNumero ]]; then
		let suma=$num+suma
		echo $suma
		read -p "Introduzca el numero que quiera sumar: " num
	else 
		echo "El parametro introducido no es un numero"
		exit 1
	fi
done


