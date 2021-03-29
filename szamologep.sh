#!/bin/bash

select muvelet in Osszead Kivon Szoroz Oszt Kilep
do
  echo "Kerek 2 szamot: "
  read a b
  case $muvelet in
    Osszead) echo "$a + $b = $((a+b))";;
    #Kivon) echo "$a - $b = $((a-b))";;
    Kivon) rand=$RANDOM;
            read -p "Igaz-e? $a-$b=$rand (i/h)" -n 1 -t 10 valasz;
            if [ $rand -eq $((a-b)) ]
            then
              if [ $valasz = 'i' ]
              then
                echo " helyes"
              else
                echo " teves"
              fi
            elif [ $rand -ne $((a-b)) ]
            then
              if [ $valasz = 'h' ]
              then
                echo " helyes"
              else
                echo " teves"
              fi
            fi;;
    Szoroz) echo "$a * $b = $((a*b))";;
    Kilep) echo "bye"; exit 0;;
  esac
done
