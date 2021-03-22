#! /bin/bash

sorokSzama=`wc -l $1`
szavakSzama=`wc -w $1`
karakterekSzama=`wc -m $1`

sorokSzama=${sorokSzama:0:3}
szavakSzama=${szavakSzama:0:4}
karakterekSzama=${karakterekSzama:0:5}

echo "Sorok szama: $sorokSzama"
echo "Szavak szama: $szavakSzama"
echo "Karakterek szama: $karakterekSzama"

echo "Atlagos soronkenti szoszam: $((szavakSzama/sorokSzama))"
echo "Atlagos soronkenti karakterszam: $((karakterekSzama/sorokSzama))"
