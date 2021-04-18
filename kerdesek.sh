#!/bin/bash

if [ $# -lt 1 ]
then
  echo "Nem adtad meg a tesztkerdesek allomanyat!"
  exit 1
fi

read -p "Neved: " nev
valaszok=${nev}"_valaszai.dat"
kerdesszam=0
helyesszam=0

exec 7<"kerdesek.dat"

while read -u 7 kerdes
do
  echo "$kerdes" | tee -a "$valaszok"
  kerdesszam=$((kerdesszam+1))
  read -r -u 7 opcio1
  read -r -u 7 opcio2
  read -r -u 7 helyes
  echo "$helyes" >> "$valaszok"
  echo "1) " "$opcio1"
  echo "2) " "$opcio2"
  read -r -p "Add meg a helyes valasz sorszamat! (1/2): " -n 1 -t 3 -s valasz
  echo ""
  if [ -z $valasz ] # ha  ures
  then
    valasz="timeout"
  fi

  if [ $valasz = "1" ]
  then
    echo $opcio1 >> $valaszok
    valaszszoveg=$opcio1
  elif [ $valasz = "2" ]
  then
    echo $opcio2 >> $valaszok
    valaszszoveg=$opcio2
  else
    echo "Nem letezo valasz! " $valasz>>$valaszok
    valaszszoveg="hibas"
  fi

  if  [ $helyes = $valaszszoveg ]
  then
    helyesszam=$((helyesszam+1))
  fi
done

echo "Kerdesek szama: " $kerdesszam
echo "Helyes valaszok szama: " $helyesszam
echo "Szazalek: " $(( (helyesszam*100)/(kerdesszam) ))
