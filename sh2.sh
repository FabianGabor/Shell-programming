#!/bin/bash

szoveg="Szoveges valtozo"
szam1=6
szam2=5

echo $szoveg $szam $szam2
echo '$szoveg'
echo "$szoveg"
echo `date`

lista=`ls -l`
echo "Vegrehajtas eredmenye: " $?
echo "$lista"
echo "Lista hossza: ${#lista}"
echo "${lista:11:10}"

echo "parancssori parameterek szama: $#"
echo "$2"
echo "$*"
echo "$$"
echo "$0"

echo "$szam $szam2"
echo "$((szam1+$szam2))"
