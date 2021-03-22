#!/bin/bash

osszeg=$(($1 + $2))
kulonbseg=$(($1 - $2))
szorzat=$(($1 * $2))
hanyados=$(($1 / $2))
maradek=$(($1 % $2))

echo "$1 + $2 = $osszeg"
echo "$1 - $2 = $kulonbseg"
echo "$1 * $2 = $szorzat"
echo "$1 / $2 = $hanyados"
echo "$1 % $2 = $maradek"
