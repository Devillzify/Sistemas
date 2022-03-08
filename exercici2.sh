#!/bin/bash

echo "introduce tu edad"
read edad



if [ $edad -gt 18 ];
     then
     echo "Eres mayor de edad"
     else
     echo "eres menor de edad"
fi