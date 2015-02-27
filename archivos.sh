#!/bin/bash
echo "Introduzca nombre del archivo [exit para salir]"
read nombre;
if [ $nombre != exit ]
then	
	while [ ! -f $nombre ]
	do
		echo "Archivo inexistente"
		echo "Vuelve a solicitar un nombre de archivo [exit para salir]"
		read nombre;		
	done
	if [ -r $nombre ]
	then
		echo "El grupo tiene permisos de lectura"
	else
		echo "El grupo no tiene permisos de lectura"		
	fi
	if [ -w $nombre ]
	then
		echo "El grupo tiene permisos de escritura"
	else
		echo "El grupo no tiene permisos de escritura"		
	fi
	if [ -x $nombre ]
	then
		echo "El grupo tiene permisos de ejecución"
	else
		echo "El grupo no tiene permisos de ejecución"		
	fi
fi

