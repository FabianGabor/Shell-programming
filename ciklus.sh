#!/bin/bash

echo "Tartalomjegyzek:"

select valasztas in Lista For Sum While Until KILEP
do
	echo "Valasz: " $valasztas
	echo "REPLY tartalma: " $REPLY

if [ $valasztas = "Lista" ]
then
  list=`ls`

  for file in $list
  do
    echo $file
  done
fi

if [ $valasztas = "For" ]
then
  sum=0
  for i in $(seq 1 10)
  do
    sum=$(($sum+$i))
  done
  echo "Sum: " $sum

  for text in alma,korte
  do
    echo $text
  done

  for ((j=1; j<11; j++))
  do
    echo $j
  done
fi

if [ $valasztas = "While" ]
then
  ossz=1
  i=1
  while [ $ossz -le 1000 ]
  do
    echo "ossz: " $ossz "i: " $i
    ossz=$(($ossz+($ossz*$i)))
    i=$(($i+1))
  done
fi

if [ $valasztas = "Until" ]
then
  ossz=0
  until [ $ossz -ge 100 ]
  do
    echo "ossz: " $ossz
    ossz=$(($ossz+10))
  done
fi

if [ $valasztas = "KILEP" ]
then
  exit 0
fi

done
