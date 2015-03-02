#!/bin/bash

a=$(egrep '^unix' /etc/passwd );
echo $?;
if ($? != 0 )
then
	echo "Usuarios con la palabra Unix al principio: 0";
fi

echo "Usuarios con la palabra Unix al principio: " $a;

b=$();
echo "Usuarios del grupo 101: " $b;

