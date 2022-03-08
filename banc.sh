#!/bin/bash

echo Bienvenido a tu banco, que desea hacer? 

echo para acceder a la informacion use -h o -help

FICHERO=banc.txt


if [ -f $FICHERO ]
then
   echo "El banco esta esperando la orden"
else
   echo "Creando su banco"

   touch banc.txt  

   echo "Su banco esta listo"
fi

ayuda(){
echo "
SYNOPSIS
Forma de uso: $0 [Opcion]... [Fichero]...
DESCRIPCION 
Añadir y Buscar movimiento bancarios
+--------------------------------------------------------------------------+
| OPCIONS                                                           |
+--------------------------------------------------------------------------+
| -a -add    Añadir un movimiento bancario.                                |
| -s -search Buscar un movimiento bancario.                                |
| -l -list   Lista todos los movimientos bancarios ordenados por fecha.    |
| -t -total  Calcular el saldo total de la cuenta.                         |
| -h -help   Mostrar ayuda                                                 |
+--------------------------------------------------------------------------+ 
CODIGOS DE RETORNO

0 Si no hi ha cap error.
1 SI l'opció introduïda no és vàlida.
2 Si un argument númeric no és un número.
3 Si el nombre de paràmetres és erroni.
4 Si un argument de tipus data no és una data.
5 Si hi ha un error d'entrada/sortida a $banc.txt"
}

add(){
echo "Introduzca una Fecha, un Concepto y una cantidad"
echo ""
echo "Introduzca la fecha del importe"
read DATE
while [[ "$(echo "$DATE" | grep -E "^20[0-9]{2}-[01][0-9]-[0-3][0-9]$")" == "" ]]; do
  echo introduce una fecha correcta:
  read DATE
done

echo "Introduzca el concepto"
echo ""
read concepto

echo "Introduzca la cantidad"
echo ""
read cantidad

while [[ "$(echo "$cantidad" | grep -E "^[0-9]{1,200}$")" == "" ]]; do
  echo introduce una cantidad correcta:
  read cantidad
done

echo "$DATE $concepto $cantidad" >> banc.txt
}

list()
{
 sort -n -t"/" -k3 -k1 -k2 banc.txt
}

search()
{
   echo "Que quieres buscar?"
   read cosa
   grep $cosa banc.txt
}


total()
{
  num= awk '{s+=$3} END {print s}' banc.txt
}

case $1 in
   -h)
      ayuda
      ;;
   -help)
      ayuda
      ;;
   -a)
      add
      ;;
   -add)
      add
      ;;
   -l)
      list
      ;;
   -list)
      list
      ;;
   -s)
      search
      ;;
   -search)
      search
      ;;
   -t)
      total
      ;;
   -total)
      total
      ;;   
esac

