#!/bin/bash

echo "introduce el numero de alumnos"
read alumnos


if [[ $alumnos > 30 || $alumnos < 1 ]];
then
echo "muy mal"

else
echo "pos mu bien"
fi

for ((i=0;i<$alumnos;i+=1))
do
echo "alumno $i"
done
