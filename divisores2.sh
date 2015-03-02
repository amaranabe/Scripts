#!/bin/bash

if [ $# = 4 ]
then
	if [ $1 -eq 2 ]
	then
		
		resto=$(expr  $4 % $2  +  $4 % $3); #sin expr hubiera valido con doble parentesis...
		if [ $resto -eq 0 ]
		then
			echo $2 "y" $3 "son divisores de" $4;
		else
			echo $2 "y" $3 "no son divisores de" $4;
		fi

	elif [ $1 -eq 3 ]
	then
		resto=$(expr  $2 % $3  +  $2 % $4);
		if [ $resto -eq 0 ]
		then
			echo $3 "y" $4 "son divisores de" $2;
		else
			echo $3 "y" $4 "no son divisores de" $2;
		fi
	fi
else
	echo "Error. Faltan parámetros."
fi 

