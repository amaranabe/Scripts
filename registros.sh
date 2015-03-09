#!/bin/bash

a=$(egrep '^unix' /etc/passwd );
echo $?;
if ($? != 0 )
then
	echo "Usuarios con la palabra Unix al principio: 0";
fi

echo "Usuarios con la palabra Unix al principio: " $a;

b=$(egrep [a-z]:.:...:101 /etc/pass );
echo "Usuarios del grupo 101: " $b;

c=$(egrep ':[0-9][0-9][0-9]:101' /etc/passwd);
echo "Usuarios del grupo 100,101,105: " $c;


