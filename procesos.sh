#!/bin/bash

ps -A
echo -n "Introduzca nombre del proceso: "
read nombre;

ps -A | grep $nombre > /dev/null;

while [ $? != 0 ]
do	
	echo "Proceso no encontrado. Inténtelo de nuevo"
	echo -n "Introduzca nombre del proceso: "
	read nombre;
	ps -A | grep $nombre;
	
done

echo -n "Proceso existe. El PID es: "
pidof $nombre;



