#!/bin/bash

echo "Introduzca un password: "
read password1;
echo "Repita de nuevo su password: "
read password2;


while [ "$password1" != "$password2" ]
do
	echo "El password no coincide, intentelo de nuevo."
	echo "Repita de nuevo su password: "
	read password2;

done

echo "Contraseña válida."







