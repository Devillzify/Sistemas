#!/bin/bash

tamano=$2
fichero=$1

if [[ $2 == "" ]] ;
then
tamano=1024
fi 


if [[ $1 == "" ]] ;
then
fichero="buit"
fi



truncate -s $tamano $fichero