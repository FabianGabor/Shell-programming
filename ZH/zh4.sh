#!/bin/bash

# Ha kevés a paraméter
if [ $# -ne 2 ]
then
	echo "Tul keves parameter" 1>&2
	echo "$0 <binaris1> <binaris2>"
	exit 1
fi

if [[ ! $1 =~ ^[0-1]+$ ]]; then
  echo "$1 nem binaris" 1>&2
  exit 1;
fi

if [[ ! $2 =~ ^[0-1]+$ ]]; then
  echo "$2 nem binaris" 1>&2
  exit 1;
fi

if [ $1 -gt $2 ]; then
  echo "$1 > $2"
else
  if [ $2 -gt $1 ]; then
    echo "$1 < $2"
  else
    echo "$1 = $2"
  fi
fi