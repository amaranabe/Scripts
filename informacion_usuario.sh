#!/bin/bash
id -u $1 > /dev/null 2>&1;
if [ $? = 0 -a $# = 2 ]
then
	echo "Usuario:" $1
	if [ $2 = "1" ]
	then
		echo "Conexiones del usuario" $1
		netstat;
	elif [ $2 = "2" ]
	then
		echo "Carpetas que contiene la home de" $1
		ls /home/$1 | wc -l;
	elif [ $2 = "3" ]
	then
		echo "Puede ver la IP del equipo"
		ifconfig;
	else 
		echo "Error en el parámetro dos."
	fi
else
	echo "Error. Faltan parámetros o usuario inexistente."
fi
