#!/bin/bash

# Ha kevés a paraméter
if [ $# -ne 3 ]
then
	echo "Tul keves parameter" 1>&2
	echo "$0 <szam1> <szam2> <karakter>"
	exit 1
fi

if [[ ($1 -le 1) ]] || [[ ($1 -ge 10) ]]
then
  echo "$1 nincs 1-10 kozott!" 1>&2
fi

if  [[ ($2 -le 1) ]] || [[ ($2 -ge 10) ]]
then
  echo "$2 nincs 1-10 kozott!" 1>&2
fi

if [[ $2 -gt $1 ]]
then
  echo "$2 > $1" 1>&2
fi

if ! echo $3 | egrep -q '^[a-zA-Z]$';
  then
    echo "$3 csak 1 karakter lehet!" 1>&2
fi


for (( i=1; i<=$1; i++ ))
do
  for (( j=1; j<=$1; j++ ))
  do
    if [[ $i == $2 ]] || [[ $j == $2 ]]
    then
      echo -n "x"
    else
      echo -n "o"
    fi
  done
  echo
done