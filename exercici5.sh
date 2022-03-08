#!/bin/bash



tamano=$2
fichero=$1

if [ -f $fichero ] ;
  then
    echo “El archivo $fichero ya existe.”
	exit
	else 
	truncate -s $tamano $fichero
fi

