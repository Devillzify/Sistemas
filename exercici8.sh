#!/bin/bash
opcio=0
mult=0
while [ $opcio -ne 2 ]
do

	echo "1. Taula de multiplicar"
	echo "2. Sortir"
	read opcio
	case $opcio in
	1)
		read -p "introdueix un nombre del 0 al 10: " num
		if [ $num -lt 0 ] || [ $num -gt 10 ]
		then
			echo "Error, posa un nombre entre 0 i 10"
		else
			for i in 0 1 2 3 4 5 6 7 8 9 10
			do
				let mult=$i*$num	
				echo "$mult"
			done
		fi
	;;
	2)
		echo "Adeu"
	;;
	*)
		echo "Tria l'opcio 1 o 2"
	;; 
	esac
done
