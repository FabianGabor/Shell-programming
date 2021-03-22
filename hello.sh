#!/usr/bin/env bash

echo "Hello World!"
pwd
echo "Kiraly sorok szama: "
# grep "[Kk]irály" walesi | wc -l
grep -c "[Kk]irály" walesi
# mkdir walesi
# cp walesi.txt ./walesi
ls -l walesi

sor="Ez egy sor"
szam1=5
szam2=6
szam3=$((szam1+szam2))

echo $sor
echo $((szam1 + szam2))
echo $szam3