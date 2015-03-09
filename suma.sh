#!/bin/sh

suma(){
	
	batura=$(expr $1 + $2 + $3);
	echo $batura;
}

if [ $# = 3 ]
then 
	echo $(suma $1 $2 $3);
fi


