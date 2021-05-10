#!/bin/bash

# 3.
# Készítsen szkriptet ujzh3.sh névvel, amely a billentyűzetről beolvas egy karaktert mindaddig, amíg q betűt nem olvas be.
# A morze abc szerint, ha 1-est ütünk le, akkor írja ki, hogy „ta”, ha 2-est, akkor azt, hogy „ti”.
# Más billentyűre ne reagáljon a program. A program a legvégén írja ki, hogy milyen hosszú volt az általunk megadott morze jelzés.


hossz=0

while read -N 1 -s char;
do
  if [[ $char -eq 'q' ]]
  then
    break;
  fi
  if [[ $char -eq '1' ]]
  then
    echo 'ti'
    hossz=$((hossz+1))
  fi
  if [[ $char -eq '2' ]]
  then
    echo 'ta'
    hossz=$((hossz+1))
  fi
done

echo "Morze hossz: $hossz"