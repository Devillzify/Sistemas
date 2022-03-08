#!/bin/bash

echo "introduce el primer numero"
read valor1
echo " introduce el segundo numero"
read valor2

echo $valor1

if [ $valor1 > $valor2 ];
then
while [[ $valor1 > $valor2 ]]; do

valor1=$((valor1 - 1))
echo $valor1
done
fi

if  [ $valor1 < $valor2 ];
then
while [[ $valor1 < $valor2 ]]; do
valor1=$((valor1 + 1))
echo $valor1
done
fi
