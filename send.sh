#!/bin/bash

resp2="0";
while [ $resp2 != "salir" ]
do
	echo -n "Introduzca dirección de la carpeta que quiere enviar: ";
	read carpeta;

	while [ ! -d $carpeta -a $carpeta != "salir" ]
	do
		echo "Carpeta no existe.";
		echo -n "Introduzca nueva dirección o marque salir: ";
		read carpeta;
	done



	if [ $carpeta != "salir" ]
	then
		echo "Estas seguro que quieres mandar la carpeta? (S/n)"
		read resp;

		if [ $resp = "S" -o $resp = "s" ]
		then
			tar -jcvf copia.tar.bz2 $carpeta $carpeta;			
			scp copia.tar.bz2 amaia@127.0.0.1:/home/zubiri;
			rm copia.tar.bz2;
			echo "¿Quieres enviar otra carpeta o salir? (cambiar/salir)";
			read resp2;

			while [ $resp2 != "salir" -a $resp2 != "cambiar" ]
			do
				echo "Perdón,¿Qué es lo que quiere? (cambiar/salir)";
				read resp2;
			done
			
		elif [ $resp = "n" ]
		then
			echo "¿Quieres cambiar de carpeta o salir? (cambiar/salir)";
			read resp2;
			while [ $resp2 != "salir" -a $resp2 != "cambiar" ]
			do
				echo "Perdón,¿Qué es lo que quiere? (cambiar/salir)";
				read resp2;
			done

		else
			echo "Operación cancelada.";		
		fi
	else
		resp2="salir";
	fi
done
