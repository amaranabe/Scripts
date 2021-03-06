#!/bin/bash

a=$(egrep "[Ss]e" juegodeprueba.txt | wc -l); #sin comillas
echo "Nº líneas que contienen la cadena "se": " $a; 

b=$(egrep '\<[Ss]e\>' juegodeprueba.txt | wc -l); #grep -w se | wc -l
echo "Nº líneas que contienen la palabra 'se': " $b; 

c=$(egrep '[a-z]+se[a-z]+ | [Ss]e[a-z]+ | [a-z]+[Ss]e' juegodeprueba.txt | wc -l);
echo "Nº líneas que contienen 'se' dentro de una palabra: " $c;

d=$(egrep -E '(\<[Ss]e\>.+((se[a-z]+)|([a-z]+se[a-z]+)|([a-z]+se)))|(((se[a-z]+)|([a-z]+se[a-z]+)|([a-z]+se)).+\<[Ss]e\>)' juegodeprueba.txt | wc -l);
echo "Nº líneas que en la misma línean tiene 'se' como palabra o cadena: " $d;
