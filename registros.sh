#!/bin/bash

a=$(egrep '.*:.*:.*:.*:.*Unix' /etc/passwd | wc -l);
echo '====================================';
echo "Usuarios con la palabra Unix al principio: " $a;

b=$(egrep '.*:.*:.*:101' /etc/passwd | wc -l );
echo '====================================';
echo "Usuarios del grupo 101: " $b;

c=$(egrep ':[0-9]*:(101|100|105)' /etc/passwd | wc -l );
echo '====================================';
echo "Usuarios del grupo 100,101,105: " $c;

d=$(egrep '.*:.*:.*:.*:.*:/home/un.*' /etc/passwd | wc -l );
echo '====================================';
echo "Usuarios con directorio propio /home/un*: " $d;

echo '====================================';
echo "Listar usuarios de 1 dígito: ";
egrep '.*:.*:[0-9]:.*:.*:.*:.*' /etc/passwd;

echo '====================================';
echo "Listar usuarios de 1 o 2 dígitos: ";
egrep '.*:.*:([0-9]|[0-9][0-9]):.*:.*:.*:.*' /etc/passwd;

echo '====================================';
echo "Listar usuarios de 4 caracteres: ";
egrep '^....:.*:.*:.*:.*:.*:.*' /etc/passwd;

echo '====================================';
echo "Listar usuarios de 4 caracteres: ";
egrep '^r...:.*:.*:.*:.*:.*:.*' /etc/passwd;




