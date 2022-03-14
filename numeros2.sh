while [ true ]
do
	echo "Introduce un numero"
	read numero
	if [[ $numero =~ [0-9]+([.][0-9]+)?$ ]]; then
		break
	else
		echo "$numero no es un numero"
	fi
done
