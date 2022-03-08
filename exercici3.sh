#!/bin/bash

echo "introduce un numero"
read numero
let resto=numero%2


if [ $resto -eq 0 ];
     then
     echo "Es par"
     else
     echo "Es impar"
fi