#!/bin/bash

if [ $# -lt 3 ]
then
	echo "Tul keves parameter" 1>&2 #redirect to stderr
	echo "felteteles.sh <muveleti jel> <op1> <op2>"
	exit 1
fi


if [ $1 != "+" -a $1 != "-" -a $1 != "\*" -a $1 != "/" ] 
# if [ $1 != "+" ] || [ $1 != "-" ] || [ $1 != "*" ] || [ $1 != "/" ]
then
	echo "Hibas muveleti jel"
	exit 2
fi

echo "OK"

szam=0;

case $1 in 
	"+")szam=$(($2+$3)) ;;
	"-")szam=$(($2-$3)) ;;
	"*")szam=$(($2*$3)) ;;
	"/")szam=$(($2/$3)) ;;
esac

echo "eredmeny: " $szam
